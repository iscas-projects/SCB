(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var462 0)
(declare-sort var652 0)
(declare-sort var1787 0)
(declare-sort var1991 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-var1787-1 ((Array Int var1787)) Int)
(declare-fun var1991-init () var1991)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1087086210 (var1991 String) void)
(declare-const null-var462 var462)
(declare-const null-String String)
(declare-const null-__Array__Int__var1787__ (Array Int var1787))
(declare-const var555 var462) ; Statement: r10 := @this: org.apache.ibatis.io.ClassLoaderWrapper 
(assert (not (= var555 null-var462)))
(declare-const var170 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var170 null-String)))
(declare-const var2063 (Array Int var1787)) ; Statement: r0 := @parameter1: java.lang.ClassLoader[] 
(assert (not (= var2063 null-__Array__Int__var1787__)))
(define-const var3730 Int (getLength-Arr-var1787-1 var2063)) ; Statement: i0 = lengthof r0 
(define-const var430 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r1 = new java.lang.ClassNotFoundException 
(assert (>= var430 var3730)) ; Cond: i1 >= i0 
(define-const var984 var1991 var1991-init) ; Statement: $r1 = new java.lang.ClassNotFoundException 
(define-const var3500 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3500)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3500!1 String)
(assert (= var3500!1 ""))
(assert true)
(define-const var3114 String (append/672562846 var3500!1 "Cannot find class: ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot find class: ") 
(declare-const var3500!2 String)
(assert (= var3500!2 (str.++ var3500!1 "Cannot find class: ")))
(assert true)
(define-const var2382 String (append/672562846 var3114 var170)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3114!1 String)
(assert (= var3114!1 (str.++ var3114 var170)))
(assert true)
(define-const var2756 String (toString/-2075883882 var2382)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1087086210 var984 var2756)) ; Statement: specialinvoke $r1.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>($r6) 

(declare-const var984!1 var1991)
(declare-const var2756!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-var1787-1=([java.lang.ClassLoader[]], int), var1991-init=([], java.lang.ClassNotFoundException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1087086210=([java.lang.ClassNotFoundException, java.lang.String], void)}
; {var462=org.apache.ibatis.io.ClassLoaderWrapper, var555=r10, var170=r3, var652=null_type, var1787=java.lang.ClassLoader, var2063=r0, var3730=i0, var430=i1, var1991=java.lang.ClassNotFoundException, var984=$r1, var3500=$r2, var3114=$r4, var2382=$r5, var2756=$r6}
; {org.apache.ibatis.io.ClassLoaderWrapper=var462, r10=var555, r3=var170, null_type=var652, java.lang.ClassLoader=var1787, r0=var2063, i0=var3730, i1=var430, java.lang.ClassNotFoundException=var1991, $r1=var984, $r2=var3500, $r4=var3114, $r5=var2382, $r6=var2756}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.apache.ibatis.io.ClassLoaderWrapper;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.ClassLoader[];	i0 = lengthof r0;	i1 = 0;	if i1 >= i0 goto $r1 = new java.lang.ClassNotFoundException;	$r1 = new java.lang.ClassNotFoundException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot find class: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>($r6);	throw $r1
;block_num 3