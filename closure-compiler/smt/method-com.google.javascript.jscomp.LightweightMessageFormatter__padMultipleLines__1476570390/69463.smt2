(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1516 0)
(declare-sort var2819 0)
(declare-sort var1771 0)
(declare-sort var321 0)
(declare-sort var3546 0)
(declare-sort var3046 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3546_checkState/1095365836 (Bool String var3046) void)
(declare-fun cast-from-var2819-to-var3046 (var2819) var3046)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun padLine/1902940624 (var1516 Int String String Int var321) void)
(declare-const null-var1516 var1516)
(declare-const null-var2819 var2819)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var321 var321)
(declare-const var1232 var1516) ; Statement: r7 := @this: com.google.javascript.jscomp.LightweightMessageFormatter 
(assert (not (= var1232 null-var1516)))
(declare-const var1064 var2819) ; Statement: r6 := @parameter0: com.google.javascript.jscomp.JSError 
(assert (not (= var1064 null-var2819)))
(declare-const var513 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var513 null-Int)))
(declare-const var2226 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var2226 null-String)))
(declare-const var3901 String) ; Statement: r5 := @parameter3: java.lang.StringBuilder 
(assert (not (= var3901 null-String)))
(declare-const var1552 var321) ; Statement: r0 := @parameter4: com.google.javascript.rhino.Node 
(assert (not (= var1552 null-var321)))
 ; Statement: if r0 != null goto $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter on(char)>(10) 
(assert (not (not (= var1552 null-var321)))) ; Negate: Cond: r0 != null  
(assert true)
;(assert (append/672562846 var3901 var2226)) ; Statement: virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3901!1 String)
(assert (= var3901!1 (str.++ var3901 var2226)))
(assert true)
;(assert (append/672562846 var3901!1 "\n")) ; Statement: virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var3901!2 String)
(assert (= var3901!2 (str.++ var3901!1 "\n")))
(assert true)
(define-const var646 Int (indexOf/-1037706067 var2226 124)) ; Statement: $i8 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(124) 
(define-const var2690 Int (+ var513 var646)) ; Statement: $i9 = i2 + $i8 
(define-const var835 Int (+ var2690 2)) ; Statement: i11 = $i9 + 2 
(assert true)
(define-const var3004 Int (length/-134980193 var2226)) ; Statement: $i10 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i11 > $i10 goto $z1 = 0 
(assert (not (> var835 var3004))) ; Negate: Cond: i11 > $i10  
(define-const var3139 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z1, "Cannot format source excerpt; unexpected start character for error:\n %s", r6)] 
(assert true) ; Non Conditional
;(assert (var3546_checkState/1095365836 var3139 "Cannot format source excerpt; unexpected start character for error:\n %s" (cast-from-var2819-to-var3046 var1064))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z1, "Cannot format source excerpt; unexpected start character for error:\n %s", r6) 

(declare-const var3139!1 Bool)
(declare-const var336 String)
(declare-const var1064!1 var2819)
(define-const var1413 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i20 = (int) -1 
(assert true)
;(assert (padLine/1902940624 var1232 var835 var2226 var3901!2 var1413 var1552)) ; Statement: virtualinvoke r7.<com.google.javascript.jscomp.LightweightMessageFormatter: void padLine(int,java.lang.String,java.lang.StringBuilder,int,com.google.javascript.rhino.Node)>(i11, r1, r5, $i20, r0) 

(declare-const var1232!1 var1516)
(declare-const var835!1 Int)
(declare-const var2226!1 String)
(declare-const var3901!3 String)
(declare-const var1413!1 Int)
(declare-const var1552!1 var321)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), indexOf/-1037706067=([java.lang.String, int], int), length/-134980193=([java.lang.String], int), var3546_checkState/1095365836=([boolean, java.lang.String, java.lang.Object], void), cast-from-var2819-to-var3046=([com.google.javascript.jscomp.JSError], java.lang.Object), cast-from-Int-to-Int=([int], int), padLine/1902940624=([com.google.javascript.jscomp.LightweightMessageFormatter, int, java.lang.String, java.lang.StringBuilder, int, com.google.javascript.rhino.Node], void)}
; {var1516=com.google.javascript.jscomp.LightweightMessageFormatter, var1232=r7, var2819=com.google.javascript.jscomp.JSError, var1064=r6, var513=i2, var2226=r1, var1771=null_type, var3901=r5, var321=com.google.javascript.rhino.Node, var1552=r0, var646=$i8, var2690=$i9, var835=i11, var3004=$i10, var3139=$z1, var3546=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3046=java.lang.Object, var336="Cannot format source excerpt; unexpected start character for error:\n %s", var1413=$i20}
; {com.google.javascript.jscomp.LightweightMessageFormatter=var1516, r7=var1232, com.google.javascript.jscomp.JSError=var2819, r6=var1064, i2=var513, r1=var2226, null_type=var1771, r5=var3901, com.google.javascript.rhino.Node=var321, r0=var1552, $i8=var646, $i9=var2690, i11=var835, $i10=var3004, $z1=var3139, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3546, java.lang.Object=var3046, "Cannot format source excerpt; unexpected start character for error:\n %s"=var336, $i20=var1413}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.LightweightMessageFormatter;	r6 := @parameter0: com.google.javascript.jscomp.JSError;	i2 := @parameter1: int;	r1 := @parameter2: java.lang.String;	r5 := @parameter3: java.lang.StringBuilder;	r0 := @parameter4: com.google.javascript.rhino.Node;	if r0 != null goto $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter on(char)>(10);	virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$i8 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(124);	$i9 = i2 + $i8;	i11 = $i9 + 2;	$i10 = virtualinvoke r1.<java.lang.String: int length()>();	if i11 > $i10 goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z1, "Cannot format source excerpt; unexpected start character for error:\n %s", r6)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z1, "Cannot format source excerpt; unexpected start character for error:\n %s", r6);	$i20 = (int) -1;	virtualinvoke r7.<com.google.javascript.jscomp.LightweightMessageFormatter: void padLine(int,java.lang.String,java.lang.StringBuilder,int,com.google.javascript.rhino.Node)>(i11, r1, r5, $i20, r0);	return
;block_num 4