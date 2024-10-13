(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2359 0)
(declare-sort var41 0)
(declare-sort var3454 0)
(declare-sort var3100 0)
(declare-sort var711 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var711_error/-402343703 (String) void)
(declare-const null-String String)
(declare-const null-var41 var41)
(declare-const null-var3454 var3454)
(declare-const null-var3100 var3100)
(declare-const var1371 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1371 null-String)))
(declare-const var3828 String) ; Statement: r19 := @parameter1: java.lang.StringBuffer 
(assert (not (= var3828 null-String)))
(declare-const var2645 var41) ; Statement: r30 := @parameter2: java.util.Map 
(assert (not (= var2645 null-var41)))
(declare-const var552 var41) ; Statement: r31 := @parameter3: java.util.Map 
(assert (not (= var552 null-var41)))
(declare-const var435 var3454) ; Statement: r9 := @parameter4: java.util.List 
(assert (not (= var435 null-var3454)))
(define-const var2218 String var1371) ; Statement: r49 = r0 
(define-const var1182 var3100 null-var3100) ; Statement: r50 = null 
(assert true)
(define-const var3419 Int (length/-134980193 var1371)) ; Statement: i11 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i11 <= 0 goto (branch) 
(assert (<= var3419 0)) ; Cond: i11 <= 0 
 ; Statement: if r50 != null goto $z0 = r50 instanceof java.lang.Class 
(assert (not (not (= var1182 null-var3100)))) ; Negate: Cond: r50 != null  
(define-const var392 String String-init) ; Statement: $r53 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var392)) ; Statement: specialinvoke $r53.<java.lang.StringBuffer: void <init>()>() 

(declare-const var392!1 String)
(assert true)
(define-const var446 String (append/1560614132 var392!1 "Unrecognized format specifier [")) ; Statement: $r26 = virtualinvoke $r53.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Unrecognized format specifier [") 
(declare-const var392!2 String)
(assert (str.prefixof var392!1 var392!2))
(assert true)
(define-const var3641 String (append/1560614132 var446 var1371)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0) 
(declare-const var446!1 String)
(assert (str.prefixof var446 var446!1))
(assert true)
(define-const var3045 String (append/1560614132 var3641 "]")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]") 
(declare-const var3641!1 String)
(assert (str.prefixof var3641 var3641!1))
(assert true)
(define-const var2933 String (toString/-222306083 var3045)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var711_error/-402343703 var2933)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>($r29) 

(declare-const var2933!1 String)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var711_error/-402343703=([java.lang.String], void)}
; {var1371=r0, var2359=null_type, var3828=r19, var41=java.util.Map, var2645=r30, var552=r31, var3454=java.util.List, var435=r9, var2218=r49, var3100=java.lang.Object, var1182=r50, var3419=i11, var392=$r53, var446=$r26, var3641=$r27, var3045=$r28, var2933=$r29, var711=org.apache.log4j.helpers.LogLog}
; {r0=var1371, null_type=var2359, r19=var3828, java.util.Map=var41, r30=var2645, r31=var552, java.util.List=var3454, r9=var435, r49=var2218, java.lang.Object=var3100, r50=var1182, i11=var3419, $r53=var392, $r26=var446, $r27=var3641, $r28=var3045, $r29=var2933, org.apache.log4j.helpers.LogLog=var711}
;seq <java.lang.String: int length()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r19 := @parameter1: java.lang.StringBuffer;	r30 := @parameter2: java.util.Map;	r31 := @parameter3: java.util.Map;	r9 := @parameter4: java.util.List;	r49 = r0;	r50 = null;	i11 = virtualinvoke r0.<java.lang.String: int length()>();	if i11 <= 0 goto (branch);	if r50 != null goto $z0 = r50 instanceof java.lang.Class;	$r53 = new java.lang.StringBuffer;	specialinvoke $r53.<java.lang.StringBuffer: void <init>()>();	$r26 = virtualinvoke $r53.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Unrecognized format specifier [");	$r27 = virtualinvoke $r26.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0);	$r28 = virtualinvoke $r27.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]");	$r29 = virtualinvoke $r28.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>($r29);	return null
;block_num 4