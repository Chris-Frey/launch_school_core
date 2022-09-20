DEGREE = "\xC2\xB0"

def dms(deg)
# p deg.to_f - deg.to_i
   minutes = ((deg - deg.to_i) * 60).floor
   seconds = ((deg - deg.to_i) - (minutes.floor / 60.to_f)) * 3600
# p ((minutes.to_i) / 60.to_f)

p "#{deg.to_i}#{DEGREE}#{"%02d" % minutes}'#{"%02d"  % seconds.round(0)}"
end












dms(30) == %(30°00'00")
dms(76.73) #== %(76°43'48")
dms(254.6) #== %(254°36'00")
dms(93.034773) #== %(93°02'05")
dms(0) #== %(0°00'00")
dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")