(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1743 0)
(declare-sort var3094 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3094-init () var3094)
(declare-fun <init>/597479796 (var3094 String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun hasMoreTokens/711654492 (var3094) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var2899 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2899 null-String)))
(define-const var1520 var3094 var3094-init) ; Statement: $r0 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/597479796 var1520 var2899)) ; Statement: specialinvoke $r0.<java.util.StringTokenizer: void <init>(java.lang.String)>(r1) 

(declare-const var1520!1 var3094)
(declare-const var2899!1 String)
(define-const var1401 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1401)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1401!1 String)
(assert (= var1401!1 ""))
(assert true)
(define-const var1267 Bool (hasMoreTokens/711654492 var1520!1)) ; Statement: z0 = virtualinvoke $r0.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
(assert true) ; Non Conditional
 ; Statement: if z0 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1267 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var143 String (toString/-2075883882 var1401!1)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3094-init=([], java.util.StringTokenizer), <init>/597479796=([java.util.StringTokenizer, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2899=r1, var1743=null_type, var3094=java.util.StringTokenizer, var1520=$r0, var1401=$r2, var1267=z0, var143=$r3}
; {r1=var2899, null_type=var1743, java.util.StringTokenizer=var3094, $r0=var1520, $r2=var1401, z0=var1267, $r3=var143}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.util.StringTokenizer;	specialinvoke $r0.<java.util.StringTokenizer: void <init>(java.lang.String)>(r1);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	z0 = virtualinvoke $r0.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if z0 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3