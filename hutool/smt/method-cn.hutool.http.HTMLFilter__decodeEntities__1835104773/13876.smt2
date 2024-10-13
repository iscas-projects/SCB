(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1394 0)
(declare-sort var2185 0)
(declare-sort var348 0)
(declare-sort var3020 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun matcher/468719934 (var348 String) var3020)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var3020) Bool)
(declare-fun appendTail/804194418 (var3020 String) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun validateEntities/-29289123 (var1394 String) String)
(declare-const null-var1394 var1394)
(declare-const null-String String)
(declare-const var1394-P_ENTITY var348)
(declare-const var1394-P_ENTITY_UNICODE var348)
(declare-const var1394-P_ENCODE var348)
(declare-const var2154 var1394) ; Statement: r6 := @this: cn.hutool.http.HTMLFilter 
(assert (not (= var2154 null-var1394)))
(declare-const var3904 String) ; Statement: r14 := @parameter0: java.lang.String 
(assert (not (= var3904 null-String)))
(define-const var1055 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1055)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1055!1 String)
(define-const var484 var348 var1394-P_ENTITY) ; Statement: $r1 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_ENTITY> 
(assert true)
(define-const var927 var3020 (matcher/468719934 var484 (cast-from-String-to-String var3904))) ; Statement: r15 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r14) 
(assert true) ; Non Conditional
(assert true)
(define-const var2271 Bool (find/1809080823 var927)) ; Statement: $z0 = virtualinvoke r15.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r15.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r0) 
(assert (= (ite var2271 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (appendTail/804194418 var927 var1055!1)) ; Statement: virtualinvoke r15.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r0) 

(declare-const var927!1 var3020)
(declare-const var1055!2 String)
(assert true)
(define-const var3441 String (toString/-222306083 var1055!2)) ; Statement: r17 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var150 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var150)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var150!1 String)
(define-const var2935 var348 var1394-P_ENTITY_UNICODE) ; Statement: $r3 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_ENTITY_UNICODE> 
(assert true)
(define-const var238 var3020 (matcher/468719934 var2935 (cast-from-String-to-String var3441))) ; Statement: r18 = virtualinvoke $r3.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r17) 
(assert true) ; Non Conditional
(assert true)
(define-const var2304 Bool (find/1809080823 var238)) ; Statement: $z1 = virtualinvoke r18.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z1 == 0 goto virtualinvoke r18.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r2) 
(assert (= (ite var2304 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
;(assert (appendTail/804194418 var238 var150!1)) ; Statement: virtualinvoke r18.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r2) 

(declare-const var238!1 var3020)
(declare-const var150!2 String)
(assert true)
(define-const var3630 String (toString/-222306083 var150!2)) ; Statement: r20 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var1080 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1080)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1080!1 String)
(define-const var1512 var348 var1394-P_ENCODE) ; Statement: $r5 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_ENCODE> 
(assert true)
(define-const var142 var3020 (matcher/468719934 var1512 (cast-from-String-to-String var3630))) ; Statement: r21 = virtualinvoke $r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r20) 
(assert true) ; Non Conditional
(assert true)
(define-const var2492 Bool (find/1809080823 var142)) ; Statement: $z2 = virtualinvoke r21.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z2 == 0 goto virtualinvoke r21.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r4) 
(assert (= (ite var2492 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
;(assert (appendTail/804194418 var142 var1080!1)) ; Statement: virtualinvoke r21.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r4) 

(declare-const var142!1 var3020)
(declare-const var1080!2 String)
(assert true)
(define-const var2002 String (toString/-222306083 var1080!2)) ; Statement: r23 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
(define-const var512 String (validateEntities/-29289123 var2154 var2002)) ; Statement: r24 = specialinvoke r6.<cn.hutool.http.HTMLFilter: java.lang.String validateEntities(java.lang.String)>(r23) 
 ; Statement: return r24 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean), appendTail/804194418=([java.util.regex.Matcher, java.lang.StringBuffer], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), validateEntities/-29289123=([cn.hutool.http.HTMLFilter, java.lang.String], java.lang.String)}
; {var1394=cn.hutool.http.HTMLFilter, var2154=r6, var3904=r14, var2185=null_type, var1055=$r0, var348=java.util.regex.Pattern, var484=$r1, var3020=java.util.regex.Matcher, var927=r15, var2271=$z0, var3441=r17, var150=$r2, var2935=$r3, var238=r18, var2304=$z1, var3630=r20, var1080=$r4, var1512=$r5, var142=r21, var2492=$z2, var2002=r23, var512=r24}
; {cn.hutool.http.HTMLFilter=var1394, r6=var2154, r14=var3904, null_type=var2185, $r0=var1055, java.util.regex.Pattern=var348, $r1=var484, java.util.regex.Matcher=var3020, r15=var927, $z0=var2271, r17=var3441, $r2=var150, $r3=var2935, r18=var238, $z1=var2304, r20=var3630, $r4=var1080, $r5=var1512, r21=var142, $z2=var2492, r23=var2002, r24=var512}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 3}
;stmts r6 := @this: cn.hutool.http.HTMLFilter;	r14 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r1 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_ENTITY>;	r15 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r14);	$z0 = virtualinvoke r15.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto virtualinvoke r15.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r0);	virtualinvoke r15.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r0);	r17 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$r3 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_ENTITY_UNICODE>;	r18 = virtualinvoke $r3.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r17);	$z1 = virtualinvoke r18.<java.util.regex.Matcher: boolean find()>();	if $z1 == 0 goto virtualinvoke r18.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r2);	virtualinvoke r18.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r2);	r20 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>();	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_ENCODE>;	r21 = virtualinvoke $r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r20);	$z2 = virtualinvoke r21.<java.util.regex.Matcher: boolean find()>();	if $z2 == 0 goto virtualinvoke r21.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r4);	virtualinvoke r21.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r4);	r23 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>();	r24 = specialinvoke r6.<cn.hutool.http.HTMLFilter: java.lang.String validateEntities(java.lang.String)>(r23);	return r24
;block_num 7