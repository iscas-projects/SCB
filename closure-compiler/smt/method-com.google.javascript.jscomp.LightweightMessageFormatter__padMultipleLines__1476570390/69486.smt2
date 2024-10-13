(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3402 0)
(declare-sort var3643 0)
(declare-sort var2642 0)
(declare-sort var701 0)
(declare-sort var2808 0)
(declare-sort var2671 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2808_checkState/1095365836 (Bool String var2671) void)
(declare-fun cast-from-var3643-to-var2671 (var3643) var2671)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun padLine/1902940624 (var3402 Int String String Int var701) void)
(declare-const null-var3402 var3402)
(declare-const null-var3643 var3643)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var701 var701)
(declare-const var2177 var3402) ; Statement: r7 := @this: com.google.javascript.jscomp.LightweightMessageFormatter 
(assert (not (= var2177 null-var3402)))
(declare-const var1886 var3643) ; Statement: r6 := @parameter0: com.google.javascript.jscomp.JSError 
(assert (not (= var1886 null-var3643)))
(declare-const var2855 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var2855 null-Int)))
(declare-const var1187 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var1187 null-String)))
(declare-const var1974 String) ; Statement: r5 := @parameter3: java.lang.StringBuilder 
(assert (not (= var1974 null-String)))
(declare-const var1861 var701) ; Statement: r0 := @parameter4: com.google.javascript.rhino.Node 
(assert (not (= var1861 null-var701)))
 ; Statement: if r0 != null goto $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter on(char)>(10) 
(assert (not (not (= var1861 null-var701)))) ; Negate: Cond: r0 != null  
(assert true)
;(assert (append/672562846 var1974 var1187)) ; Statement: virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1974!1 String)
(assert (= var1974!1 (str.++ var1974 var1187)))
(assert true)
;(assert (append/672562846 var1974!1 "\n")) ; Statement: virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var1974!2 String)
(assert (= var1974!2 (str.++ var1974!1 "\n")))
(assert true)
(define-const var3115 Int (indexOf/-1037706067 var1187 124)) ; Statement: $i8 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(124) 
(define-const var1473 Int (+ var2855 var3115)) ; Statement: $i9 = i2 + $i8 
(define-const var2865 Int (+ var1473 2)) ; Statement: i11 = $i9 + 2 
(assert true)
(define-const var2665 Int (length/-134980193 var1187)) ; Statement: $i10 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i11 > $i10 goto $z1 = 0 
(assert (> var2865 var2665)) ; Cond: i11 > $i10 
(define-const var3977 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var2808_checkState/1095365836 var3977 "Cannot format source excerpt; unexpected start character for error:\n %s" (cast-from-var3643-to-var2671 var1886))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z1, "Cannot format source excerpt; unexpected start character for error:\n %s", r6) 

(declare-const var3977!1 Bool)
(declare-const var606 String)
(declare-const var1886!1 var3643)
(define-const var1039 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i20 = (int) -1 
(assert true)
;(assert (padLine/1902940624 var2177 var2865 var1187 var1974!2 var1039 var1861)) ; Statement: virtualinvoke r7.<com.google.javascript.jscomp.LightweightMessageFormatter: void padLine(int,java.lang.String,java.lang.StringBuilder,int,com.google.javascript.rhino.Node)>(i11, r1, r5, $i20, r0) 

(declare-const var2177!1 var3402)
(declare-const var2865!1 Int)
(declare-const var1187!1 String)
(declare-const var1974!3 String)
(declare-const var1039!1 Int)
(declare-const var1861!1 var701)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), indexOf/-1037706067=([java.lang.String, int], int), length/-134980193=([java.lang.String], int), var2808_checkState/1095365836=([boolean, java.lang.String, java.lang.Object], void), cast-from-var3643-to-var2671=([com.google.javascript.jscomp.JSError], java.lang.Object), cast-from-Int-to-Int=([int], int), padLine/1902940624=([com.google.javascript.jscomp.LightweightMessageFormatter, int, java.lang.String, java.lang.StringBuilder, int, com.google.javascript.rhino.Node], void)}
; {var3402=com.google.javascript.jscomp.LightweightMessageFormatter, var2177=r7, var3643=com.google.javascript.jscomp.JSError, var1886=r6, var2855=i2, var1187=r1, var2642=null_type, var1974=r5, var701=com.google.javascript.rhino.Node, var1861=r0, var3115=$i8, var1473=$i9, var2865=i11, var2665=$i10, var3977=$z1, var2808=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2671=java.lang.Object, var606="Cannot format source excerpt; unexpected start character for error:\n %s", var1039=$i20}
; {com.google.javascript.jscomp.LightweightMessageFormatter=var3402, r7=var2177, com.google.javascript.jscomp.JSError=var3643, r6=var1886, i2=var2855, r1=var1187, null_type=var2642, r5=var1974, com.google.javascript.rhino.Node=var701, r0=var1861, $i8=var3115, $i9=var1473, i11=var2865, $i10=var2665, $z1=var3977, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2808, java.lang.Object=var2671, "Cannot format source excerpt; unexpected start character for error:\n %s"=var606, $i20=var1039}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.LightweightMessageFormatter;	r6 := @parameter0: com.google.javascript.jscomp.JSError;	i2 := @parameter1: int;	r1 := @parameter2: java.lang.String;	r5 := @parameter3: java.lang.StringBuilder;	r0 := @parameter4: com.google.javascript.rhino.Node;	if r0 != null goto $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter on(char)>(10);	virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$i8 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(124);	$i9 = i2 + $i8;	i11 = $i9 + 2;	$i10 = virtualinvoke r1.<java.lang.String: int length()>();	if i11 > $i10 goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z1, "Cannot format source excerpt; unexpected start character for error:\n %s", r6);	$i20 = (int) -1;	virtualinvoke r7.<com.google.javascript.jscomp.LightweightMessageFormatter: void padLine(int,java.lang.String,java.lang.StringBuilder,int,com.google.javascript.rhino.Node)>(i11, r1, r5, $i20, r0);	return
;block_num 4