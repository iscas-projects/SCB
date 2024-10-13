(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var812 0)
(declare-sort var85 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun locals/1220995084 (var812) (Array Int var85))
(declare-fun getLength-Arr-var85-1 ((Array Int var85)) Int)
(declare-fun top/1220995084 (var812) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var812 var812)
(declare-const var905 var812) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.analysis.Frame 
(assert (not (= var905 null-var812)))
(define-const var1130 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1130)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1130!1 String)
(assert (= var1130!1 ""))
(assert true)
;(assert (append/672562846 var1130!1 "locals = [")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("locals = [") 
(declare-const var1130!2 String)
(assert (= var1130!2 (str.++ var1130!1 "locals = [")))
(define-const var3340 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(define-const var1008 (Array Int var85) (locals/1220995084 var905)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.bytecode.analysis.Frame: org.apache.ibatis.javassist.bytecode.analysis.Type[] locals> 
(define-const var1628 Int (getLength-Arr-var85-1 var1008)) ; Statement: $i0 = lengthof $r2 
 ; Statement: if i6 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] stack = [") 
(assert (>= var3340 var1628)) ; Cond: i6 >= $i0 
(assert true)
;(assert (append/672562846 var1130!2 "] stack = [")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] stack = [") 
(declare-const var1130!3 String)
(assert (= var1130!3 (str.++ var1130!2 "] stack = [")))
(define-const var2464 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(define-const var438 Int (top/1220995084 var905)) ; Statement: $i1 = r1.<org.apache.ibatis.javassist.bytecode.analysis.Frame: int top> 
 ; Statement: if i7 >= $i1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (>= var2464 var438)) ; Cond: i7 >= $i1 
(assert true)
;(assert (append/-1166366385 var1130!3 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var1130!4 String)
(assert (str.prefixof var1130!3 var1130!4))
(assert true)
(define-const var1159 String (toString/-2075883882 var1130!4)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), locals/1220995084=([org.apache.ibatis.javassist.bytecode.analysis.Frame], org.apache.ibatis.javassist.bytecode.analysis.Type[]), getLength-Arr-var85-1=([org.apache.ibatis.javassist.bytecode.analysis.Type[]], int), top/1220995084=([org.apache.ibatis.javassist.bytecode.analysis.Frame], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var812=org.apache.ibatis.javassist.bytecode.analysis.Frame, var905=r1, var1130=$r0, var3340=i6, var85=org.apache.ibatis.javassist.bytecode.analysis.Type, var1008=$r2, var1628=$i0, var2464=i7, var438=$i1, var1159=$r3}
; {org.apache.ibatis.javassist.bytecode.analysis.Frame=var812, r1=var905, $r0=var1130, i6=var3340, org.apache.ibatis.javassist.bytecode.analysis.Type=var85, $r2=var1008, $i0=var1628, i7=var2464, $i1=var438, $r3=var1159}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.analysis.Frame;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("locals = [");	i6 = 0;	$r2 = r1.<org.apache.ibatis.javassist.bytecode.analysis.Frame: org.apache.ibatis.javassist.bytecode.analysis.Type[] locals>;	$i0 = lengthof $r2;	if i6 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] stack = [");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] stack = [");	i7 = 0;	$i1 = r1.<org.apache.ibatis.javassist.bytecode.analysis.Frame: int top>;	if i7 >= $i1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 5