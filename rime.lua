function date_translator(input, seg)
   if (input == "orq") then
      --- Candidate(type, start, end, text, comment)
      --- string.gsub(os.date("%Y年%m月%d日"), "([^%d])0+", "%1")
      yield(Candidate("date", seg.start, seg._end, string.gsub(os.date("%Y年%m月%d日"), "([^%d])0+", "%1"), ""))
      yield(Candidate("date", seg.start, seg._end, os.date("%Y-%m-%d"), " "))
   end
end

function time_translator(input, seg)
   if (input == "ouj") then
      --- local cand = Candidate("time", seg.start, seg._end, os.date("%H:%M:$S"), " ")
      --- cand.quality = 1
      --- yield(cand)
      --- Candidate(type, start, end, text, comment)
      yield(Candidate("time", seg.start, seg._end, os.date("%H:%M"), ""))
      yield(Candidate("time", seg.start, seg._end, os.date("%H:%M:%S"), ""))
      yield(Candidate("time", seg.start, seg._end, os.date("%Y-%m-%d %H:%M:%S"), ""))
   end
end

calculator_translator = require("calculator_translator")