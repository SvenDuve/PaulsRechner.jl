
for i in 1:10

    a = now()
    b = now()
    println(i)
    sleep(3)

end


DateTime(time())

DateTime(2018, 9, 9, 14, 0, 0)

a = now()

b = now()

println()



floor(DateTime(now()), Dates.second)


second(now())

second(now()) + 10

sleep(10)


DateTime(Year(now()), Month(now()), , 1, 1, 1)

Time(now())

# if endTime kleiner als now, ergebnis ist Null

x = true


startTime = Time(Hour(now()), minute(now()), second(now()))
endTime = Time(Hour(now()), minute(now()), second(now()))

d = endTime - startTime

second(DateTime(d))



a = Time(now())
b = Time(now())

Dates.value(b-a)

Int64(round(Float64(b-a)/1000000000))




Int64(round((b-a)/1000000000))


while x == true

    if endTime < Time(now())
        println("Zeit vorbei du looser!")

        x = false
    end


end



using Dates



while endTime < Time(now())

    if typeof(a) < String a = readline() end

end


function Eingabe() x = readline() end



x = true
endTime = Time(Hour(now()), minute(now()), second(now()) + 10)
while endTime > Time(now())

    readline()

end



Dates.value(Time(now()))
