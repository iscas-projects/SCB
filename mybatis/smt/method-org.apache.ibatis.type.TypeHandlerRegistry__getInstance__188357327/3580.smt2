(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3384 0)
(declare-sort var2495 0)
(declare-sort var1501 0)
(declare-sort var189 0)
(declare-sort var103 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var1501-init () var1501)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var189) String)
(declare-fun cast-from-ClassObject-to-var189 (ClassObject) var189)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1017745449 (var1501 String var103) void)
(declare-fun cast-from-var2495-to-var103 (var2495) var103)
(declare-const null-var3384 var3384)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2495 var2495)
(declare-const var1263 var3384) ; Statement: r24 := @this: org.apache.ibatis.type.TypeHandlerRegistry 
(assert (not (= var1263 null-var3384)))
(declare-const var430 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var430 null-ClassObject)))
(declare-const var844 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var844 null-ClassObject)))
 ; Statement: if r0 == null goto $r2 = newarray (java.lang.Class)[0] 
(assert (not (= var430 null-ClassObject))) ; Negate: Cond: r0 == null  
(define-const var280 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r6 = newarray (java.lang.Class)[1] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3914 var2495) ; Statement: $r16 := @caughtexception 
(assert (not (= var3914 null-var2495)))
(define-const var3455 var1501 var1501-init) ; Statement: $r17 = new org.apache.ibatis.type.TypeException 
(define-const var903 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var903)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var903!1 String)
(assert (= var903!1 ""))
(assert true)
(define-const var2816 String (append/672562846 var903!1 "Failed invoking constructor for handler ")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed invoking constructor for handler ") 
(declare-const var903!2 String)
(assert (= var903!2 (str.++ var903!1 "Failed invoking constructor for handler ")))
(assert true)
(define-const var3692 String (append/-1031950772 var2816 (cast-from-ClassObject-to-var189 var844))) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2816!1 String)
(assert (str.prefixof var2816 var2816!1))
(assert true)
(define-const var2573 String (toString/-2075883882 var3692)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1017745449 var3455 var2573 (cast-from-var2495-to-var103 var3914))) ; Statement: specialinvoke $r17.<org.apache.ibatis.type.TypeException: void <init>(java.lang.String,java.lang.Throwable)>($r21, $r16) 

(declare-const var3455!1 var1501)
(declare-const var2573!1 String)
(declare-const var3914!1 var2495)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-ClassObject-init=([], java.lang.Class[]), var1501-init=([], org.apache.ibatis.type.TypeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var189=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1017745449=([org.apache.ibatis.type.TypeException, java.lang.String, java.lang.Throwable], void), cast-from-var2495-to-var103=([java.lang.Exception], java.lang.Throwable)}
; {var3384=org.apache.ibatis.type.TypeHandlerRegistry, var1263=r24, var430=r0, var844=r1, var280=$r6, var2495=java.lang.Exception, var3914=$r16, var1501=org.apache.ibatis.type.TypeException, var3455=$r17, var903=$r18, var2816=$r19, var189=java.lang.Object, var3692=$r20, var2573=$r21, var103=java.lang.Throwable}
; {org.apache.ibatis.type.TypeHandlerRegistry=var3384, r24=var1263, r0=var430, r1=var844, $r6=var280, java.lang.Exception=var2495, $r16=var3914, org.apache.ibatis.type.TypeException=var1501, $r17=var3455, $r18=var903, $r19=var2816, java.lang.Object=var189, $r20=var3692, $r21=var2573, java.lang.Throwable=var103}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r24 := @this: org.apache.ibatis.type.TypeHandlerRegistry;	r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.Class;	if r0 == null goto $r2 = newarray (java.lang.Class)[0];	$r6 = newarray (java.lang.Class)[1];	$r16 := @caughtexception;	$r17 = new org.apache.ibatis.type.TypeException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed invoking constructor for handler ");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<org.apache.ibatis.type.TypeException: void <init>(java.lang.String,java.lang.Throwable)>($r21, $r16);	throw $r17
;block_num 3