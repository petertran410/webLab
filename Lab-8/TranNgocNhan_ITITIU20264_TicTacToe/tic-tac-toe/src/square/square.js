const Square = ({ value, onSquareClick }) => {
  return (
    <button className="square bg-white border-2 border-solid float-left text-2xl font-bold leading-8 h-8 mr-[-1px] mt-[-1px] p-0 text-center w-8 border-neutral-500" onClick={onSquareClick}>
      {value}
    </button>
  );
};

export { Square };
