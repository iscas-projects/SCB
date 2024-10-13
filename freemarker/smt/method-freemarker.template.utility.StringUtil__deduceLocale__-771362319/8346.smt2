(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1884 0)
(declare-sort var1250 0)
(declare-sort var1928 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1250_getDefault/-641693464 () var1250)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1928-init () var1928)
(declare-fun <init>/1909349671 (var1928 String String) void)
(declare-fun hasMoreTokens/711654492 (var1928) Bool)
(declare-fun var1250-init () var1250)
(declare-fun nextToken/-418815358 (var1928) String)
(declare-fun <init>/492115872 (var1250 String String String) void)
(declare-const null-String String)
(declare-const var3775 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3775 null-String)))
 ; Statement: if r3 != null goto staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(assert (not (= var3775 null-String))) ; Cond: r3 != null 
;(assert var1250_getDefault/-641693464) ; Statement: staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(assert true)
(define-const var575 Int (length/-134980193 var3775)) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $r8 = new java.util.StringTokenizer 
(assert (<= var575 0)) ; Cond: $i0 <= 0 
(define-const var181 var1928 var1928-init) ; Statement: $r8 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/1909349671 var181 var3775 ",_ ")) ; Statement: specialinvoke $r8.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>(r3, ",_ ") 

(declare-const var181!1 var1928)
(declare-const var3775!1 String)
(declare-const var603 String)
(define-const var3793 String "") ; Statement: r5 = "" 
(define-const var1998 String "") ; Statement: r6 = "" 
(assert true)
(define-const var1983 Bool (hasMoreTokens/711654492 var181!1)) ; Statement: $z2 = virtualinvoke $r8.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z2 == 0 goto $z0 = virtualinvoke $r8.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
(assert (= (ite var1983 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var2357 Bool (hasMoreTokens/711654492 var181!1)) ; Statement: $z0 = virtualinvoke $r8.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke $r8.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
(assert (= (ite var2357 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1512 Bool (hasMoreTokens/711654492 var181!1)) ; Statement: $z1 = virtualinvoke $r8.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z1 != 0 goto $r10 = new java.util.Locale 
(assert (not (= (ite var1512 1 0) 0))) ; Cond: $z1 != 0 
(define-const var840 var1250 var1250-init) ; Statement: $r10 = new java.util.Locale 
(assert true)
(define-const var2431 String (nextToken/-418815358 var181!1)) ; Statement: $r1 = virtualinvoke $r8.<java.util.StringTokenizer: java.lang.String nextToken()>() 
(assert true)
;(assert (<init>/492115872 var840 var3793 var1998 var2431)) ; Statement: specialinvoke $r10.<java.util.Locale: void <init>(java.lang.String,java.lang.String,java.lang.String)>(r5, r6, $r1) 

(declare-const var840!1 var1250)
(declare-const var3793!1 String)
(declare-const var1998!1 String)
(declare-const var2431!1 String)
(define-const var192 var1250 var840!1) ; Statement: r7 = $r10 
(assert true) ; Non Conditional
 ; Statement: return r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var1250_getDefault/-641693464=([], java.util.Locale), length/-134980193=([java.lang.String], int), var1928-init=([], java.util.StringTokenizer), <init>/1909349671=([java.util.StringTokenizer, java.lang.String, java.lang.String], void), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean), var1250-init=([], java.util.Locale), nextToken/-418815358=([java.util.StringTokenizer], java.lang.String), <init>/492115872=([java.util.Locale, java.lang.String, java.lang.String, java.lang.String], void)}
; {var3775=r3, var1884=null_type, var1250=java.util.Locale, var575=$i0, var1928=java.util.StringTokenizer, var181=$r8, var603=",_ ", var3793=r5, var1998=r6, var1983=$z2, var2357=$z0, var1512=$z1, var840=$r10, var2431=$r1, var192=r7}
; {r3=var3775, null_type=var1884, java.util.Locale=var1250, $i0=var575, java.util.StringTokenizer=var1928, $r8=var181, ",_ "=var603, r5=var3793, r6=var1998, $z2=var1983, $z0=var2357, $z1=var1512, $r10=var840, $r1=var2431, r7=var192}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @parameter0: java.lang.String;	if r3 != null goto staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$i0 = virtualinvoke r3.<java.lang.String: int length()>();	if $i0 <= 0 goto $r8 = new java.util.StringTokenizer;	$r8 = new java.util.StringTokenizer;	specialinvoke $r8.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>(r3, ",_ ");	r5 = "";	r6 = "";	$z2 = virtualinvoke $r8.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z2 == 0 goto $z0 = virtualinvoke $r8.<java.util.StringTokenizer: boolean hasMoreTokens()>();	$z0 = virtualinvoke $r8.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z0 == 0 goto $z1 = virtualinvoke $r8.<java.util.StringTokenizer: boolean hasMoreTokens()>();	$z1 = virtualinvoke $r8.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z1 != 0 goto $r10 = new java.util.Locale;	$r10 = new java.util.Locale;	$r1 = virtualinvoke $r8.<java.util.StringTokenizer: java.lang.String nextToken()>();	specialinvoke $r10.<java.util.Locale: void <init>(java.lang.String,java.lang.String,java.lang.String)>(r5, r6, $r1);	r7 = $r10;	return r7
;block_num 7