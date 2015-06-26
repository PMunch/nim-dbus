import dbus
import unsigned

let bus = getBus(dbus.DBUS_BUS_SESSION)
var msg = makeCall("com.zielmicha.test",
             "/com/zielmicha/test",
             "com.zielmicha.test",
             "hello")

#msg.append("hello")
#msg.append(uint32(1))
#msg.append("")

let pending = bus.sendMessageWithReply(msg)
bus.flush()

let reply = pending.waitForReply()
reply.raiseIfError()
