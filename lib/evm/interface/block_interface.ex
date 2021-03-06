defprotocol EVM.Interface.BlockInterface do
  @moduledoc """
  Interface for interacting with block headers.
  """

  @type t :: module()

  @spec get_block_header(t) :: Block.Header.t
  def get_block_header(t)

  @spec get_block_by_hash(t, EVM.hash) :: Block.Header.t | nil
  def get_block_by_hash(t, block_hash)

  @spec get_block_by_number(t, non_neg_integer()) :: Block.Header.t | nil
  def get_block_by_number(t, steps)

end
