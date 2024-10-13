(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var89 0)
(declare-sort var3717 0)
(declare-sort var2006 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3717-init () var3717)
(declare-fun <init>/1909349671 (var3717 String String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun nextToken/-418815358 (var3717) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var2006_toString/-1054155509 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun hasMoreTokens/711654492 (var3717) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1665 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1665 null-String)))
(declare-const var2190 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2190 null-Bool)))
(define-const var2909 var3717 var3717-init) ; Statement: $r0 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/1909349671 var2909 var1665 ".")) ; Statement: specialinvoke $r0.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>(r1, ".") 

(declare-const var2909!1 var3717)
(declare-const var1665!1 String)
(declare-const var3895 String)
(define-const var1068 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1068)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1068!1 String)
(assert (= var1068!1 ""))
(assert true)
(define-const var3371 String (nextToken/-418815358 var2909!1)) ; Statement: $r3 = virtualinvoke $r0.<java.util.StringTokenizer: java.lang.String nextToken()>() 
(assert (and true (and (> (str.len var3371) 0) (<= 0 0))))
(define-const var2351 Int (charAt/698050440 var3371 0)) ; Statement: $c0 = virtualinvoke $r3.<java.lang.String: char charAt(int)>(0) 
(define-const var3804 String (var2006_toString/-1054155509 var2351)) ; Statement: $r4 = staticinvoke <java.lang.Character: java.lang.String toString(char)>($c0) 
(assert true)
;(assert (append/672562846 var1068!1 var3804)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1068!2 String)
(assert (= var1068!2 (str.++ var1068!1 var3804)))
(assert true) ; Non Conditional
(assert true)
(define-const var1971 Bool (hasMoreTokens/711654492 var2909!1)) ; Statement: $z0 = virtualinvoke $r0.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1971 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2951 String (toString/-2075883882 var1068!2)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3717-init=([], java.util.StringTokenizer), <init>/1909349671=([java.util.StringTokenizer, java.lang.String, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), nextToken/-418815358=([java.util.StringTokenizer], java.lang.String), charAt/698050440=([java.lang.String, int], char), var2006_toString/-1054155509=([char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1665=r1, var89=null_type, var2190=z1, var3717=java.util.StringTokenizer, var2909=$r0, var3895=".", var1068=$r2, var3371=$r3, var2351=$c0, var2006=java.lang.Character, var3804=$r4, var1971=$z0, var2951=$r5}
; {r1=var1665, null_type=var89, z1=var2190, java.util.StringTokenizer=var3717, $r0=var2909, "."=var3895, $r2=var1068, $r3=var3371, $c0=var2351, java.lang.Character=var2006, $r4=var3804, $z0=var1971, $r5=var2951}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: char charAt(int)>;	<java.lang.Character: java.lang.String toString(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	$r0 = new java.util.StringTokenizer;	specialinvoke $r0.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>(r1, ".");	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.util.StringTokenizer: java.lang.String nextToken()>();	$c0 = virtualinvoke $r3.<java.lang.String: char charAt(int)>(0);	$r4 = staticinvoke <java.lang.Character: java.lang.String toString(char)>($c0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$z0 = virtualinvoke $r0.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z0 == 0 goto $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3