(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3084 0)
(declare-sort var1545 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1545-init () var1545)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-66299138 (var1545 String) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var473 String) ; Statement: r30 := @parameter0: java.lang.String 
(assert (not (= var473 null-String)))
(declare-const var2392 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2392 null-String)))
(declare-const var613 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var613 null-Int)))
(declare-const var1824 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var1824 null-Int)))
 ; Statement: if r30 != null goto $z0 = virtualinvoke r30.<java.lang.String: boolean startsWith(java.lang.String)>("-") 
(assert (not (not (= var473 null-String)))) ; Negate: Cond: r30 != null  
(define-const var331 var1545 var1545-init) ; Statement: $r32 = new freemarker.template.utility.DateUtil$DateParseException 
(define-const var1807 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1807)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1807!1 String)
(assert (= var1807!1 ""))
(assert true)
(define-const var2909 String (append/672562846 var1807!1 "The ")) ; Statement: $r19 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The ") 
(declare-const var1807!2 String)
(assert (= var1807!2 (str.++ var1807!1 "The ")))
(assert true)
(define-const var3007 String (append/672562846 var2909 var2392)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2909!1 String)
(assert (= var2909!1 (str.++ var2909 var2392)))
(assert true)
(define-const var1305 String (append/672562846 var3007 " part is missing.")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" part is missing.") 
(declare-const var3007!1 String)
(assert (= var3007!1 (str.++ var3007 " part is missing.")))
(assert true)
(define-const var745 String (toString/-2075883882 var1305)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-66299138 var331 var745)) ; Statement: specialinvoke $r32.<freemarker.template.utility.DateUtil$DateParseException: void <init>(java.lang.String)>($r22) 

(declare-const var331!1 var1545)
(declare-const var745!1 String)
 ; Statement: throw $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {var1545-init=([], freemarker.template.utility.DateUtil$DateParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-66299138=([freemarker.template.utility.DateUtil$DateParseException, java.lang.String], void)}
; {var473=r30, var3084=null_type, var2392=r2, var613=i0, var1824=i1, var1545=freemarker.template.utility.DateUtil$DateParseException, var331=$r32, var1807=$r31, var2909=$r19, var3007=$r20, var1305=$r21, var745=$r22}
; {r30=var473, null_type=var3084, r2=var2392, i0=var613, i1=var1824, freemarker.template.utility.DateUtil$DateParseException=var1545, $r32=var331, $r31=var1807, $r19=var2909, $r20=var3007, $r21=var1305, $r22=var745}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r30 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	i0 := @parameter2: int;	i1 := @parameter3: int;	if r30 != null goto $z0 = virtualinvoke r30.<java.lang.String: boolean startsWith(java.lang.String)>("-");	$r32 = new freemarker.template.utility.DateUtil$DateParseException;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The ");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" part is missing.");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r32.<freemarker.template.utility.DateUtil$DateParseException: void <init>(java.lang.String)>($r22);	throw $r32
;block_num 2