(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var180 0)
(declare-sort var1125 0)
(declare-sort var3574 0)
(declare-sort var2964 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var2964-init () var2964)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var2964 String var3574) void)
(declare-fun cast-from-var2964-to-var3574 (var2964) var3574)
(declare-const null-var180 var180)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3574 var3574)
(declare-const var3546 var180) ; Statement: r11 := @this: org.hibernate.hql.internal.ast.util.LiteralProcessor 
(assert (not (= var3546 null-var180)))
(declare-const var678 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var678 null-String)))
(declare-const var1298 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1298 null-Int)))
(define-const var2379 String var678) ; Statement: r12 = r0 
 ; Statement: if i0 != 102 goto (branch) 
(assert (not (not (= var1298 102)))) ; Negate: Cond: i0 != 102  
(assert true)
(define-const var2145 Bool (endsWith/985337093 var678 "f")) ; Statement: $z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("f") 
 ; Statement: if $z4 != 0 goto $i5 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (not (= (ite var2145 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(assert true)
(define-const var2844 Bool (endsWith/985337093 var678 "F")) ; Statement: $z5 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("F") 
 ; Statement: if $z5 == 0 goto $r14 = new java.math.BigDecimal 
(assert (not (= (ite var2844 1 0) 0))) ; Negate: Cond: $z5 == 0  
(declare-const var1804 var3574) ; Statement: $r4 := @caughtexception 
(assert (not (= var1804 null-var3574)))
(define-const var3160 var2964 var2964-init) ; Statement: $r16 = new org.hibernate.HibernateException 
(define-const var421 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var421)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var421!1 String)
(assert (= var421!1 ""))
(assert true)
(define-const var1704 String (append/672562846 var421!1 "Could not parse literal [")) ; Statement: $r7 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not parse literal [") 
(declare-const var421!2 String)
(assert (= var421!2 (str.++ var421!1 "Could not parse literal [")))
(assert true)
(define-const var3652 String (append/672562846 var1704 var678)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1704!1 String)
(assert (= var1704!1 (str.++ var1704 var678)))
(assert true)
(define-const var3128 String (append/672562846 var3652 "] as big-decimal")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] as big-decimal") 
(declare-const var3652!1 String)
(assert (= var3652!1 (str.++ var3652 "] as big-decimal")))
(assert true)
(define-const var2305 String (toString/-2075883882 var3128)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var3160 var2305 var1804)) ; Statement: specialinvoke $r16.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r4) 

(declare-const var3160!1 var2964)
(declare-const var2305!1 String)
(declare-const var1804!1 var3574)
(define-const var2832 var3574 (cast-from-var2964-to-var3574 var3160!1)) ; Statement: $r17 = (java.lang.Throwable) $r16 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), var2964-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var2964-to-var3574=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var180=org.hibernate.hql.internal.ast.util.LiteralProcessor, var3546=r11, var678=r0, var1125=null_type, var1298=i0, var2379=r12, var2145=$z4, var2844=$z5, var3574=java.lang.Throwable, var1804=$r4, var2964=org.hibernate.HibernateException, var3160=$r16, var421=$r15, var1704=$r7, var3652=$r8, var3128=$r9, var2305=$r10, var2832=$r17}
; {org.hibernate.hql.internal.ast.util.LiteralProcessor=var180, r11=var3546, r0=var678, null_type=var1125, i0=var1298, r12=var2379, $z4=var2145, $z5=var2844, java.lang.Throwable=var3574, $r4=var1804, org.hibernate.HibernateException=var2964, $r16=var3160, $r15=var421, $r7=var1704, $r8=var3652, $r9=var3128, $r10=var2305, $r17=var2832}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.hibernate.hql.internal.ast.util.LiteralProcessor;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r12 = r0;	if i0 != 102 goto (branch);	$z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("f");	if $z4 != 0 goto $i5 = virtualinvoke r0.<java.lang.String: int length()>();	$z5 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("F");	if $z5 == 0 goto $r14 = new java.math.BigDecimal;	$r4 := @caughtexception;	$r16 = new org.hibernate.HibernateException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not parse literal [");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] as big-decimal");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r4);	$r17 = (java.lang.Throwable) $r16;	throw $r17
;block_num 4