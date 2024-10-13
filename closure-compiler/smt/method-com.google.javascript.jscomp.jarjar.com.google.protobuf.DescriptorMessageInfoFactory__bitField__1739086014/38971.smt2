(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2324 0)
(declare-sort var1881 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1881_field/-898914195 (ClassObject String) var2324)
(declare-const null-ClassObject ClassObject)
(declare-const null-Int Int)
(declare-const var3714 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3714 null-ClassObject)))
(declare-const var338 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var338 null-Int)))
(define-const var2143 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2143)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2143!1 String)
(assert (= var2143!1 ""))
(assert true)
(define-const var52 String (append/672562846 var2143!1 "bitField")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bitField") 
(declare-const var2143!2 String)
(assert (= var2143!2 (str.++ var2143!1 "bitField")))
(assert true)
(define-const var3010 String (append/-1001720160 var52 var338)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var52!1 String)
(assert (str.prefixof var52 var52!1))
(assert true)
(define-const var3113 String (append/672562846 var3010 "_")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3010!1 String)
(assert (= var3010!1 (str.++ var3010 "_")))
(assert true)
(define-const var3140 String (toString/-2075883882 var3113)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1807 var2324 (var1881_field/-898914195 var3714 var3140)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.lang.reflect.Field field(java.lang.Class,java.lang.String)>(r0, $r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1881_field/-898914195=([java.lang.Class, java.lang.String], java.lang.reflect.Field)}
; {var3714=r0, var338=i0, var2143=$r1, var52=$r2, var3010=$r3, var3113=$r4, var3140=$r5, var2324=java.lang.reflect.Field, var1881=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory, var1807=$r6}
; {r0=var3714, i0=var338, $r1=var2143, $r2=var52, $r3=var3010, $r4=var3113, $r5=var3140, java.lang.reflect.Field=var2324, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory=var1881, $r6=var1807}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	i0 := @parameter1: int;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bitField");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.lang.reflect.Field field(java.lang.Class,java.lang.String)>(r0, $r5);	return $r6
;block_num 1