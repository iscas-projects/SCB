(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3918 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCanonicalName/935544231 (ClassObject) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const var1754 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1754 null-ClassObject)))
(declare-const var3870 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var3870 null-String)))
(assert true)
(define-const var3112 String (getCanonicalName/935544231 var1754)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getCanonicalName()>() 
(define-const var1248 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1248)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1248!1 String)
(assert (= var1248!1 ""))
 ; Statement: if r1 != null goto $r8 = r1 
(assert (not (not (= var3112 null-String)))) ; Negate: Cond: r1 != null  
(assert true)
(define-const var3703 String (getName/-1958580599 var1754)) ; Statement: $r8 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
 ; Statement: goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1010 String (append/672562846 var1248!1 var3703)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1248!2 String)
(assert (= var1248!2 (str.++ var1248!1 var3703)))
(assert true)
(define-const var371 String (append/672562846 var1010 ".")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var1010!1 String)
(assert (= var1010!1 (str.++ var1010 ".")))
(assert true)
(define-const var3086 String (append/672562846 var371 var3870)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var371!1 String)
(assert (= var371!1 (str.++ var371 var3870)))
(assert true)
(define-const var3781 String (toString/-2075883882 var3086)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getCanonicalName/935544231=([java.lang.Class], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1754=r0, var3870=r4, var3918=null_type, var3112=r1, var1248=$r2, var3703=$r8, var1010=$r3, var371=$r5, var3086=$r6, var3781=$r7}
; {r0=var1754, r4=var3870, null_type=var3918, r1=var3112, $r2=var1248, $r8=var3703, $r3=var1010, $r5=var371, $r6=var3086, $r7=var3781}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r4 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getCanonicalName()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	if r1 != null goto $r8 = r1;	$r8 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8)];	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3