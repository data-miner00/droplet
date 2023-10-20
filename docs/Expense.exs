defmodule Droplet.Docs.Expense do
  alias Droplet.Docs.Expense

  defstruct(
    title: "",
    date: nil,
    amount: 0,
    store: ""
  )

  @type t :: %Expense{
    title: String.t(),
    date: Date.t() | nil,
    amount: number(),
    store: String.t()
  }

  @spec sample :: [t()]
  def sample do
    [ # Initiate date using Sigil `~D[]`
      %Expense{title: "Book", date: ~D[2020-01-02], amount: 9.99, store: "TGV"},
    ]
  end

  @spec total([t]) :: number()
  def total(expenses) do
    expenses |> Enum.reduce(0, fn expense, acc -> expense.amount + acc end)
  end

  @spec sort_by_date([t()]) :: [t()]
  def sort_by_date(expense) do
    expense |> Enum.sort_by(& &1.date)
  end

  @spec add_expense(t) :: [t()]
  def add_expense(%Expense{} = expense) do # Enforcing the expense param type
    [expense | sample()]
  end

  def update_amount(title, amount) do
    [item] = Enum.filter(sample(), fn %{title: etitle} -> etitle == title end)
    new_item = %{item | amount: amount}

    # Remove old entry
    [new_item | sample() |> List.delete(item) ]
  end

  @users ["Mandy", "Sandra", "Apple", "Grey"]

  def authenticate(user) when user in @users, do: {:ok, "authorized"}
  def authenticate(_), do: {:error, "unauthorized"}

  def verify_password(user, _password) when user in @users, do: {:ok, "password verified"}
  def verify_password(_user, _password), do: {:error, "wrong password"}

  def login(user, password) do
    with {:ok, _auth_msg} <- authenticate(user)
         {:ok, _msg} <- verify_password(user, password) do
      {:ok, "#{user} logged in successfully"}
    else
      {:error, msg} -> {:error, msg}
      _ -> :unauthorized
    end
  end
end
