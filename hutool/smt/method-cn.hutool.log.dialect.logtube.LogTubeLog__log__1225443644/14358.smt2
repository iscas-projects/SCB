(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3225 0)
(declare-sort var3933 0)
(declare-sort var1327 0)
(declare-sort var1872 0)
(declare-sort var1260 0)
(declare-sort var1610 0)
(declare-sort var759 0)
(declare-sort var3238 0)
(declare-sort var2975 0)
(declare-sort var1375 0)
(declare-sort var1557 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1633728430 (var1610) String)
(declare-fun cast-from-var1327-to-var1610 (var1327) var1610)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-fun logger/-88636006 (var3225) var759)
(declare-fun var759_topic/1509548651 (var759 String) var3238)
(declare-fun var1375_getStackElement/-201943209 (Int) var2975)
(declare-fun var3238_xStackTraceElement/-1001686004 (var3238 var2975 String) var3238)
(declare-fun var1557_format/-950946974 (String (Array Int var1260)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var3238_message/1659508523 (var3238 String) var3238)
(declare-fun var3238_xException/637676288 (var3238 var1872) var3238)
(declare-fun var3238_commit/-625868781 (var3238) void)
(declare-const null-var3225 var3225)
(declare-const null-String String)
(declare-const null-var1327 var1327)
(declare-const null-var1872 var1872)
(declare-const null-__Array__Int__var1260__ (Array Int var1260))
(declare-const var2823 var3225) ; Statement: r3 := @this: cn.hutool.log.dialect.logtube.LogTubeLog 
(assert (not (= var2823 null-var3225)))
(declare-const var3652 String) ; Statement: r14 := @parameter0: java.lang.String 
(assert (not (= var3652 null-String)))
(declare-const var3371 var1327) ; Statement: r0 := @parameter1: cn.hutool.log.level.Level 
(assert (not (= var3371 null-var1327)))
(declare-const var1074 var1872) ; Statement: r11 := @parameter2: java.lang.Throwable 
(assert (not (= var1074 null-var1872)))
(declare-const var728 String) ; Statement: r7 := @parameter3: java.lang.String 
(assert (not (= var728 null-String)))
(declare-const var3747 (Array Int var1260)) ; Statement: r8 := @parameter4: java.lang.Object[] 
(assert (not (= var3747 null-__Array__Int__var1260__)))
(assert true)
(define-const var2342 String (name/1633728430 (cast-from-var1327-to-var1610 var3371))) ; Statement: $r1 = virtualinvoke r0.<cn.hutool.log.level.Level: java.lang.String name()>() 
(assert true)
(define-const var2734 String (toLowerCase/415700667 var2342)) ; Statement: r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toLowerCase()>() 
(define-const var3695 var759 (logger/-88636006 var2823)) ; Statement: $r4 = r3.<cn.hutool.log.dialect.logtube.LogTubeLog: io.github.logtube.core.IEventLogger logger> 
(define-const var246 var3238 (var759_topic/1509548651 var3695 var2734)) ; Statement: $r6 = interfaceinvoke $r4.<io.github.logtube.core.IEventLogger: io.github.logtube.core.IMutableEvent topic(java.lang.String)>(r2) 
(define-const var3510 var2975 (var1375_getStackElement/-201943209 6)) ; Statement: $r5 = staticinvoke <cn.hutool.core.exceptions.ExceptionUtil: java.lang.StackTraceElement getStackElement(int)>(6) 
(define-const var1599 var3238 (var3238_xStackTraceElement/-1001686004 var246 var3510 null-String)) ; Statement: $r10 = interfaceinvoke $r6.<io.github.logtube.core.IMutableEvent: io.github.logtube.core.IMutableEvent xStackTraceElement(java.lang.StackTraceElement,java.lang.String)>($r5, null) 
(define-const var969 String (var1557_format/-950946974 (cast-from-String-to-String var728) var3747)) ; Statement: $r9 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String format(java.lang.CharSequence,java.lang.Object[])>(r7, r8) 
(define-const var1134 var3238 (var3238_message/1659508523 var1599 var969)) ; Statement: $r12 = interfaceinvoke $r10.<io.github.logtube.core.IMutableEvent: io.github.logtube.core.IMutableEvent message(java.lang.String)>($r9) 
(define-const var1800 var3238 (var3238_xException/637676288 var1134 var1074)) ; Statement: $r13 = interfaceinvoke $r12.<io.github.logtube.core.IMutableEvent: io.github.logtube.core.IMutableEvent xException(java.lang.Throwable)>(r11) 
;(assert (var3238_commit/-625868781 var1800)) ; Statement: interfaceinvoke $r13.<io.github.logtube.core.IMutableEvent: void commit()>() 

(declare-const var1800!1 var3238)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var1327-to-var1610=([cn.hutool.log.level.Level], java.lang.Enum), toLowerCase/415700667=([java.lang.String], java.lang.String), logger/-88636006=([cn.hutool.log.dialect.logtube.LogTubeLog], io.github.logtube.core.IEventLogger), var759_topic/1509548651=([io.github.logtube.core.IEventLogger, java.lang.String], io.github.logtube.core.IMutableEvent), var1375_getStackElement/-201943209=([int], java.lang.StackTraceElement), var3238_xStackTraceElement/-1001686004=([io.github.logtube.core.IMutableEvent, java.lang.StackTraceElement, java.lang.String], io.github.logtube.core.IMutableEvent), var1557_format/-950946974=([java.lang.CharSequence, java.lang.Object[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var3238_message/1659508523=([io.github.logtube.core.IMutableEvent, java.lang.String], io.github.logtube.core.IMutableEvent), var3238_xException/637676288=([io.github.logtube.core.IMutableEvent, java.lang.Throwable], io.github.logtube.core.IMutableEvent), var3238_commit/-625868781=([io.github.logtube.core.IMutableEvent], void)}
; {var3225=cn.hutool.log.dialect.logtube.LogTubeLog, var2823=r3, var3652=r14, var3933=null_type, var1327=cn.hutool.log.level.Level, var3371=r0, var1872=java.lang.Throwable, var1074=r11, var728=r7, var1260=java.lang.Object, var3747=r8, var1610=java.lang.Enum, var2342=$r1, var2734=r2, var759=io.github.logtube.core.IEventLogger, var3695=$r4, var3238=io.github.logtube.core.IMutableEvent, var246=$r6, var2975=java.lang.StackTraceElement, var1375=cn.hutool.core.exceptions.ExceptionUtil, var3510=$r5, var1599=$r10, var1557=cn.hutool.core.text.CharSequenceUtil, var969=$r9, var1134=$r12, var1800=$r13}
; {cn.hutool.log.dialect.logtube.LogTubeLog=var3225, r3=var2823, r14=var3652, null_type=var3933, cn.hutool.log.level.Level=var1327, r0=var3371, java.lang.Throwable=var1872, r11=var1074, r7=var728, java.lang.Object=var1260, r8=var3747, java.lang.Enum=var1610, $r1=var2342, r2=var2734, io.github.logtube.core.IEventLogger=var759, $r4=var3695, io.github.logtube.core.IMutableEvent=var3238, $r6=var246, java.lang.StackTraceElement=var2975, cn.hutool.core.exceptions.ExceptionUtil=var1375, $r5=var3510, $r10=var1599, cn.hutool.core.text.CharSequenceUtil=var1557, $r9=var969, $r12=var1134, $r13=var1800}
;seq <java.lang.String: java.lang.String toLowerCase()>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1}
;stmts r3 := @this: cn.hutool.log.dialect.logtube.LogTubeLog;	r14 := @parameter0: java.lang.String;	r0 := @parameter1: cn.hutool.log.level.Level;	r11 := @parameter2: java.lang.Throwable;	r7 := @parameter3: java.lang.String;	r8 := @parameter4: java.lang.Object[];	$r1 = virtualinvoke r0.<cn.hutool.log.level.Level: java.lang.String name()>();	r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toLowerCase()>();	$r4 = r3.<cn.hutool.log.dialect.logtube.LogTubeLog: io.github.logtube.core.IEventLogger logger>;	$r6 = interfaceinvoke $r4.<io.github.logtube.core.IEventLogger: io.github.logtube.core.IMutableEvent topic(java.lang.String)>(r2);	$r5 = staticinvoke <cn.hutool.core.exceptions.ExceptionUtil: java.lang.StackTraceElement getStackElement(int)>(6);	$r10 = interfaceinvoke $r6.<io.github.logtube.core.IMutableEvent: io.github.logtube.core.IMutableEvent xStackTraceElement(java.lang.StackTraceElement,java.lang.String)>($r5, null);	$r9 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String format(java.lang.CharSequence,java.lang.Object[])>(r7, r8);	$r12 = interfaceinvoke $r10.<io.github.logtube.core.IMutableEvent: io.github.logtube.core.IMutableEvent message(java.lang.String)>($r9);	$r13 = interfaceinvoke $r12.<io.github.logtube.core.IMutableEvent: io.github.logtube.core.IMutableEvent xException(java.lang.Throwable)>(r11);	interfaceinvoke $r13.<io.github.logtube.core.IMutableEvent: void commit()>();	return
;block_num 1