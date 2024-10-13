(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var741 0)
(declare-sort var1555 0)
(declare-sort var2796 0)
(declare-sort var3952 0)
(declare-sort var3821 0)
(declare-sort var2259 0)
(declare-sort var49 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var2796) String)
(declare-fun cache/-579473623 (var741) var3952)
(declare-fun var2259_get/1088891777 (var2259 var3821) var3821)
(declare-fun cast-from-var3952-to-var2259 (var3952) var2259)
(declare-fun cast-from-String-to-var3821 (String) var3821)
(declare-fun cast-from-var3821-to-var49 (var3821) var49)
(declare-const null-var741 var741)
(declare-const null-String String)
(declare-const var2796-ENGLISH var2796)
(declare-const var741-DUMMY_CHARSET var49)
(declare-const var1676 var741) ; Statement: r3 := @this: org.apache.tomcat.util.buf.CharsetCache 
(assert (not (= var1676 null-var741)))
(declare-const var595 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var595 null-String)))
(define-const var1673 var2796 var2796-ENGLISH) ; Statement: $r1 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var2825 String (toLowerCase/1946809429 var595 var1673)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var3464 var3952 (cache/-579473623 var1676)) ; Statement: $r4 = r3.<org.apache.tomcat.util.buf.CharsetCache: java.util.concurrent.ConcurrentMap cache> 
(define-const var862 var3821 (var2259_get/1088891777 (cast-from-var3952-to-var2259 var3464) (cast-from-String-to-var3821 var2825))) ; Statement: $r5 = interfaceinvoke $r4.<java.util.concurrent.ConcurrentMap: java.lang.Object get(java.lang.Object)>(r2) 
(define-const var2454 var49 (cast-from-var3821-to-var49 var862)) ; Statement: r9 = (java.nio.charset.Charset) $r5 
(define-const var3558 var49 var741-DUMMY_CHARSET) ; Statement: $r6 = <org.apache.tomcat.util.buf.CharsetCache: java.nio.charset.Charset DUMMY_CHARSET> 
 ; Statement: if r9 != $r6 goto return r9 
(assert (not (= var2454 var3558))) ; Cond: r9 != $r6 
 ; Statement: return r9 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), cache/-579473623=([org.apache.tomcat.util.buf.CharsetCache], java.util.concurrent.ConcurrentMap), var2259_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var3952-to-var2259=([java.util.concurrent.ConcurrentMap], java.util.Map), cast-from-String-to-var3821=([java.lang.String], java.lang.Object), cast-from-var3821-to-var49=([java.lang.Object], java.nio.charset.Charset)}
; {var741=org.apache.tomcat.util.buf.CharsetCache, var1676=r3, var595=r0, var1555=null_type, var2796=java.util.Locale, var1673=$r1, var2825=r2, var3952=java.util.concurrent.ConcurrentMap, var3464=$r4, var3821=java.lang.Object, var2259=java.util.Map, var862=$r5, var49=java.nio.charset.Charset, var2454=r9, var3558=$r6}
; {org.apache.tomcat.util.buf.CharsetCache=var741, r3=var1676, r0=var595, null_type=var1555, java.util.Locale=var2796, $r1=var1673, r2=var2825, java.util.concurrent.ConcurrentMap=var3952, $r4=var3464, java.lang.Object=var3821, java.util.Map=var2259, $r5=var862, java.nio.charset.Charset=var49, r9=var2454, $r6=var3558}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r3 := @this: org.apache.tomcat.util.buf.CharsetCache;	r0 := @parameter0: java.lang.String;	$r1 = <java.util.Locale: java.util.Locale ENGLISH>;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$r4 = r3.<org.apache.tomcat.util.buf.CharsetCache: java.util.concurrent.ConcurrentMap cache>;	$r5 = interfaceinvoke $r4.<java.util.concurrent.ConcurrentMap: java.lang.Object get(java.lang.Object)>(r2);	r9 = (java.nio.charset.Charset) $r5;	$r6 = <org.apache.tomcat.util.buf.CharsetCache: java.nio.charset.Charset DUMMY_CHARSET>;	if r9 != $r6 goto return r9;	return r9
;block_num 2