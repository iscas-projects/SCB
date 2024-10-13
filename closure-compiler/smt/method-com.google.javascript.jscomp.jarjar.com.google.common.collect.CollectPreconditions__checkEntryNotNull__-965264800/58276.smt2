(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var989 0)
(declare-sort var2740 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2740-init () var2740)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var989) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1862440627 (var2740 String) void)
(declare-const null-var989 var989)
(declare-const var242 var989) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var242 null-var989)))
(declare-const var1901 var989) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var1901 null-var989)))
 ; Statement: if r0 != null goto (branch) 
(assert (not (not (= var242 null-var989)))) ; Negate: Cond: r0 != null  
(define-const var3486 var2740 var2740-init) ; Statement: $r8 = new java.lang.NullPointerException 
(define-const var3298 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3298)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3298!1 String)
(assert (= var3298!1 ""))
(assert true)
(define-const var3497 String (append/672562846 var3298!1 "null key in entry: null=")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null key in entry: null=") 
(declare-const var3298!2 String)
(assert (= var3298!2 (str.++ var3298!1 "null key in entry: null=")))
(assert true)
(define-const var2910 String (append/-1031950772 var3497 var1901)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3497!1 String)
(assert (str.prefixof var3497 var3497!1))
(assert true)
(define-const var1429 String (toString/-2075883882 var2910)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1862440627 var3486 var1429)) ; Statement: specialinvoke $r8.<java.lang.NullPointerException: void <init>(java.lang.String)>($r12) 

(declare-const var3486!1 var2740)
(declare-const var1429!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var2740-init=([], java.lang.NullPointerException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1862440627=([java.lang.NullPointerException, java.lang.String], void)}
; {var989=java.lang.Object, var242=r0, var1901=r1, var2740=java.lang.NullPointerException, var3486=$r8, var3298=$r9, var3497=$r10, var2910=$r11, var1429=$r12}
; {java.lang.Object=var989, r0=var242, r1=var1901, java.lang.NullPointerException=var2740, $r8=var3486, $r9=var3298, $r10=var3497, $r11=var2910, $r12=var1429}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r1 := @parameter1: java.lang.Object;	if r0 != null goto (branch);	$r8 = new java.lang.NullPointerException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null key in entry: null=");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.NullPointerException: void <init>(java.lang.String)>($r12);	throw $r8
;block_num 2