(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1517 0)
(declare-sort var673 0)
(declare-sort var133 0)
(declare-sort var196 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var133-init () (Array Int var133))
(declare-fun cast-from-String-to-var133 (String) var133)
(declare-fun var196_format/-950946974 (String (Array Int var133)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-const null-var1517 var1517)
(declare-const null-String String)
(declare-const null-__Array__Int__var133__ (Array Int var133))
(declare-const var2072 var1517) ; Statement: r4 := @this: cn.hutool.core.net.multipart.UploadFileHeader 
(assert (not (= var2072 null-var1517)))
(declare-const var961 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var961 null-String)))
(declare-const var1968 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1968 null-String)))
(define-const var1329 String null-String) ; Statement: r5 = null 
(define-const var588 (Array Int var133) arr-var133-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(declare-const var588!1 (Array Int var133))
(assert (not (= var588!1 null-__Array__Int__var133__)))
(assert (= (select var588!1 0) (cast-from-String-to-var133 var1968))) ; Statement: $r0[0] = r1 
(define-const var1815 String (var196_format/-950946974 (cast-from-String-to-String "{}=\u0022") var588!1)) ; Statement: r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String format(java.lang.CharSequence,java.lang.Object[])>("{}=\"", $r0) 
(assert true)
(define-const var1833 Int (indexOf/-1209756239 var961 var1815)) ; Statement: i0 = virtualinvoke r3.<java.lang.String: int indexOf(java.lang.String)>(r2) 
 ; Statement: if i0 <= 0 goto return r5 
(assert (<= var1833 0)) ; Cond: i0 <= 0 
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var133-init=([], java.lang.Object[]), cast-from-String-to-var133=([java.lang.String], java.lang.Object), var196_format/-950946974=([java.lang.CharSequence, java.lang.Object[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), indexOf/-1209756239=([java.lang.String, java.lang.String], int)}
; {var1517=cn.hutool.core.net.multipart.UploadFileHeader, var2072=r4, var961=r3, var673=null_type, var1968=r1, var1329=r5, var133=java.lang.Object, var588=$r0, var196=cn.hutool.core.text.CharSequenceUtil, var1815=r2, var1833=i0}
; {cn.hutool.core.net.multipart.UploadFileHeader=var1517, r4=var2072, r3=var961, null_type=var673, r1=var1968, r5=var1329, java.lang.Object=var133, $r0=var588, cn.hutool.core.text.CharSequenceUtil=var196, r2=var1815, i0=var1833}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r4 := @this: cn.hutool.core.net.multipart.UploadFileHeader;	r3 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r5 = null;	$r0 = newarray (java.lang.Object)[1];	$r0[0] = r1;	r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String format(java.lang.CharSequence,java.lang.Object[])>("{}=\"", $r0);	i0 = virtualinvoke r3.<java.lang.String: int indexOf(java.lang.String)>(r2);	if i0 <= 0 goto return r5;	return r5
;block_num 2