defmodule Wabanex.IMC do
  def calculate(filename) do
    result = File.read(filename)
    handleFile(result)
  end

  # Result é uma tupla com status :ok e content, se sim, executa o corpo da função
  defp handleFile({:ok, content}) do
    content
  end

   # Result é uma tupla com status :error e reason, se sim, executa o corpo da função
  defp handleFile({:error, reason}) do
    reason
  end
end
