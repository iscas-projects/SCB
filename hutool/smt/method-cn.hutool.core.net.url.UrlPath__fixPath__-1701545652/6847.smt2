(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2622 0)
(declare-sort var859 0)
(declare-sort var1633 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2622-init () (Array Int var2622))
(declare-fun var859_notNull/515149844 (var2622 String (Array Int var2622)) var2622)
(declare-fun cast-from-String-to-var2622 (String) var2622)
(declare-fun contentEquals/508533967 (String String) Bool)
(declare-fun var1633_trim/104521694 (String) String)
(declare-fun var1633_removePrefix/1458295415 (String String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1633_removeSuffix/2059861302 (String String) String)
(declare-const null-String String)
(declare-const var1231 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1231 null-String)))
(define-const var3638 (Array Int var2622) arr-var2622-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var859_notNull/515149844 (cast-from-String-to-var2622 var1231) "Path segment must be not null!" var3638)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "Path segment must be not null!", $r1) 

(declare-const var1231!1 String)
(declare-const var814 String)
(declare-const var3638!1 (Array Int var2622))
(define-const var198 String "/") ; Statement: $r2 = "/" 
(assert true)
(define-const var533 Bool (contentEquals/508533967 var198 var1231!1)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean contentEquals(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto r3 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String trim(java.lang.CharSequence)>(r0) 
(assert (= (ite var533 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1522 String (var1633_trim/104521694 var1231!1)) ; Statement: r3 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String trim(java.lang.CharSequence)>(r0) 
(define-const var2837 String (var1633_removePrefix/1458295415 (cast-from-String-to-String var1522) (cast-from-String-to-String "/"))) ; Statement: r4 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String removePrefix(java.lang.CharSequence,java.lang.CharSequence)>(r3, "/") 
(define-const var3705 String (var1633_removeSuffix/2059861302 (cast-from-String-to-String var2837) (cast-from-String-to-String "/"))) ; Statement: r5 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String removeSuffix(java.lang.CharSequence,java.lang.CharSequence)>(r4, "/") 
(define-const var1851 String (var1633_trim/104521694 (cast-from-String-to-String var3705))) ; Statement: r6 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String trim(java.lang.CharSequence)>(r5) 
 ; Statement: return r6 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2622-init=([], java.lang.Object[]), var859_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-String-to-var2622=([java.lang.CharSequence], java.lang.Object), contentEquals/508533967=([java.lang.String, java.lang.CharSequence], boolean), var1633_trim/104521694=([java.lang.CharSequence], java.lang.String), var1633_removePrefix/1458295415=([java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1633_removeSuffix/2059861302=([java.lang.CharSequence, java.lang.CharSequence], java.lang.String)}
; {var1231=r0, var2622=java.lang.Object, var3638=$r1, var859=cn.hutool.core.lang.Assert, var814="Path segment must be not null!", var198=$r2, var533=$z0, var1633=cn.hutool.core.text.CharSequenceUtil, var1522=r3, var2837=r4, var3705=r5, var1851=r6}
; {r0=var1231, java.lang.Object=var2622, $r1=var3638, cn.hutool.core.lang.Assert=var859, "Path segment must be not null!"=var814, $r2=var198, $z0=var533, cn.hutool.core.text.CharSequenceUtil=var1633, r3=var1522, r4=var2837, r5=var3705, r6=var1851}
;seq <java.lang.String: boolean contentEquals(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contentEquals(java.lang.CharSequence)>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "Path segment must be not null!", $r1);	$r2 = "/";	$z0 = virtualinvoke $r2.<java.lang.String: boolean contentEquals(java.lang.CharSequence)>(r0);	if $z0 == 0 goto r3 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String trim(java.lang.CharSequence)>(r0);	r3 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String trim(java.lang.CharSequence)>(r0);	r4 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String removePrefix(java.lang.CharSequence,java.lang.CharSequence)>(r3, "/");	r5 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String removeSuffix(java.lang.CharSequence,java.lang.CharSequence)>(r4, "/");	r6 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String trim(java.lang.CharSequence)>(r5);	return r6
;block_num 2