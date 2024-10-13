(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var744 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var744 var744)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Bool Bool)
(declare-const var1554 var744) ; Statement: r10 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var1554 null-var744)))
(declare-const var859 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var859 null-ClassObject)))
(declare-const var59 (Array Int ClassObject)) ; Statement: r2 := @parameter1: java.lang.Class[] 
(assert (not (= var59 null-__Array__Int__ClassObject__)))
(declare-const var2944 (Array Int Int)) ; Statement: r3 := @parameter2: byte[] 
(assert (not (= var2944 null-__Array__Int__Int__)))
(declare-const var3734 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var3734 null-Bool)))
(define-const var1020 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1020)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1020!1 String)
(assert (= var1020!1 ""))
 ; Statement: if r1 == null goto virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(assert (= var859 null-ClassObject)) ; Cond: r1 == null 
(assert true)
;(assert (append/-1166366385 var1020!1 58)) ; Statement: virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var1020!2 String)
(assert (str.prefixof var1020!1 var1020!2))
(define-const var149 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(define-const var210 Int (getLength-Arr-ClassObject-1 var59)) ; Statement: $i8 = lengthof r2 
 ; Statement: if i7 >= $i8 goto i9 = 0 
(assert (>= var149 var210)) ; Cond: i7 >= $i8 
(define-const var558 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
(define-const var1109 Int (getLength-Arr-Int-1 var2944)) ; Statement: $i0 = lengthof r3 
 ; Statement: if i9 >= $i0 goto (branch) 
(assert (>= var558 var1109)) ; Cond: i9 >= $i0 
 ; Statement: if z0 == 0 goto $r4 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3734 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2557 String (toString/-2075883882 var1020!2)) ; Statement: $r4 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), getLength-Arr-Int-1=([byte[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var744=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var1554=r10, var859=r1, var59=r2, var2944=r3, var3734=z0, var1020=$r11, var149=i7, var210=$i8, var558=i9, var1109=$i0, var2557=$r4}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var744, r10=var1554, r1=var859, r2=var59, r3=var2944, z0=var3734, $r11=var1020, i7=var149, $i8=var210, i9=var558, $i0=var1109, $r4=var2557}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	r1 := @parameter0: java.lang.Class;	r2 := @parameter1: java.lang.Class[];	r3 := @parameter2: byte[];	z0 := @parameter3: boolean;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	if r1 == null goto virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	i7 = 0;	$i8 = lengthof r2;	if i7 >= $i8 goto i9 = 0;	i9 = 0;	$i0 = lengthof r3;	if i9 >= $i0 goto (branch);	if z0 == 0 goto $r4 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 7