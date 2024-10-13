(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3270 0)
(declare-sort var1070 0)
(declare-sort var1679 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-var3270-to-var3270 ((arg var3270)) var3270 arg)
(declare-fun var1679_toCanonicalHost/367558819 (String) String)
(declare-fun domain/738514138 (var3270) String)
(declare-fun hostOnly/738514138 (var3270) Bool)
(declare-const null-var3270 var3270)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1207 var3270) ; Statement: r0 := @this: okhttp3.Cookie$Builder 
(assert (not (= var1207 null-var3270)))
(declare-const var305 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var305 null-String)))
(declare-const var1914 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1914 null-Bool)))
(define-const var1363 var3270 (cast-from-var3270-to-var3270 var1207)) ; Statement: $r1 = (okhttp3.Cookie$Builder) r0 
(define-const var3118 String (var1679_toCanonicalHost/367558819 var305)) ; Statement: $r3 = staticinvoke <okhttp3.internal.HostnamesKt: java.lang.String toCanonicalHost(java.lang.String)>(r2) 
 ; Statement: if $r3 != null goto $r1.<okhttp3.Cookie$Builder: java.lang.String domain> = $r3 
(assert (not (= var3118 null-String))) ; Cond: $r3 != null 
(declare-const var1363!1 var3270)
(assert (not (= var1363!1 null-var3270)))
(assert (= (domain/738514138 var1363!1) var3118)) ; Statement: $r1.<okhttp3.Cookie$Builder: java.lang.String domain> = $r3 
(declare-const var1363!2 var3270)
(assert (not (= var1363!2 null-var3270)))
(assert (= (hostOnly/738514138 var1363!2) var1914)) ; Statement: $r1.<okhttp3.Cookie$Builder: boolean hostOnly> = z0 
(define-const var724 var3270 (cast-from-var3270-to-var3270 var1207)) ; Statement: $r4 = (okhttp3.Cookie$Builder) r0 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3270-to-var3270=([okhttp3.Cookie$Builder], okhttp3.Cookie$Builder), var1679_toCanonicalHost/367558819=([java.lang.String], java.lang.String), domain/738514138=([okhttp3.Cookie$Builder], java.lang.String), hostOnly/738514138=([okhttp3.Cookie$Builder], boolean)}
; {var3270=okhttp3.Cookie$Builder, var1207=r0, var305=r2, var1070=null_type, var1914=z0, var1363=$r1, var1679=okhttp3.internal.HostnamesKt, var3118=$r3, var724=$r4}
; {okhttp3.Cookie$Builder=var3270, r0=var1207, r2=var305, null_type=var1070, z0=var1914, $r1=var1363, okhttp3.internal.HostnamesKt=var1679, $r3=var3118, $r4=var724}
;seq 
;cnt {}
;stmts r0 := @this: okhttp3.Cookie$Builder;	r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r1 = (okhttp3.Cookie$Builder) r0;	$r3 = staticinvoke <okhttp3.internal.HostnamesKt: java.lang.String toCanonicalHost(java.lang.String)>(r2);	if $r3 != null goto $r1.<okhttp3.Cookie$Builder: java.lang.String domain> = $r3;	$r1.<okhttp3.Cookie$Builder: java.lang.String domain> = $r3;	$r1.<okhttp3.Cookie$Builder: boolean hostOnly> = z0;	$r4 = (okhttp3.Cookie$Builder) r0;	return $r4
;block_num 2