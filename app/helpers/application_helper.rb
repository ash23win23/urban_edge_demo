module ApplicationHelper
  def flash_class(key)
    case key.to_sym
    when :notice then 'bg-green-100 border-t-4 border-green-500 rounded-b text-green-900 px-4 py-3 shadow-md'
    when :alert, :error then 'bg-red-100 border-t-4 border-red-500 rounded-b text-red-900 px-4 py-3 shadow-md'
    else 'bg-blue-100 border-t-4 border-blue-500 rounded-b text-blue-900 px-4 py-3 shadow-md'
    end
  end
end
