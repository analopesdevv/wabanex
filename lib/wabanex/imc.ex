defmodule Wabanex.IMC do
  def calculate(filename) do
    result = File.read(filename)
    handleFile(result)
  end

  defp handleFile({:ok, content}) do
    content
  end

  defp handleFile({:error, reason}) do
    reason
  end
end
