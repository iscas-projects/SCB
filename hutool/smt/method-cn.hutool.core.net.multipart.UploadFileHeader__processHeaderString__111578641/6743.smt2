(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1123 0)
(declare-sort var119 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-fun isFile/1622019174 (var1123) Bool)
(declare-fun getDataFieldValue/993614853 (var1123 String String) String)
(declare-fun formFieldName/1622019174 (var1123) String)
(declare-const null-var1123 var1123)
(declare-const null-String String)
(declare-const var1465 var1123) ; Statement: r0 := @this: cn.hutool.core.net.multipart.UploadFileHeader 
(assert (not (= var1465 null-var1123)))
(declare-const var1628 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1628 null-String)))
(assert true)
(define-const var3138 Int (indexOf/-1209756239 var1628 "filename")) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>("filename") 
 ; Statement: if $i0 <= 0 goto $z1 = 0 
(assert (<= var3138 0)) ; Cond: $i0 <= 0 
(define-const var1772 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(declare-const var1465!1 var1123)
(assert (not (= var1465!1 null-var1123)))
(assert (= (isFile/1622019174 var1465!1) var1772)) ; Statement: r0.<cn.hutool.core.net.multipart.UploadFileHeader: boolean isFile> = $z1 
(assert true)
(define-const var191 String (getDataFieldValue/993614853 var1465!1 var1628 "name")) ; Statement: $r2 = specialinvoke r0.<cn.hutool.core.net.multipart.UploadFileHeader: java.lang.String getDataFieldValue(java.lang.String,java.lang.String)>(r1, "name") 
(declare-const var1465!2 var1123)
(assert (not (= var1465!2 null-var1123)))
(assert (= (formFieldName/1622019174 var1465!2) var191)) ; Statement: r0.<cn.hutool.core.net.multipart.UploadFileHeader: java.lang.String formFieldName> = $r2 
(define-const var3291 Bool (isFile/1622019174 var1465!2)) ; Statement: $z0 = r0.<cn.hutool.core.net.multipart.UploadFileHeader: boolean isFile> 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var3291 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), isFile/1622019174=([cn.hutool.core.net.multipart.UploadFileHeader], boolean), getDataFieldValue/993614853=([cn.hutool.core.net.multipart.UploadFileHeader, java.lang.String, java.lang.String], java.lang.String), formFieldName/1622019174=([cn.hutool.core.net.multipart.UploadFileHeader], java.lang.String)}
; {var1123=cn.hutool.core.net.multipart.UploadFileHeader, var1465=r0, var1628=r1, var119=null_type, var3138=$i0, var1772=$z1, var191=$r2, var3291=$z0}
; {cn.hutool.core.net.multipart.UploadFileHeader=var1123, r0=var1465, r1=var1628, null_type=var119, $i0=var3138, $z1=var1772, $r2=var191, $z0=var3291}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r0 := @this: cn.hutool.core.net.multipart.UploadFileHeader;	r1 := @parameter0: java.lang.String;	$i0 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>("filename");	if $i0 <= 0 goto $z1 = 0;	$z1 = 0;	r0.<cn.hutool.core.net.multipart.UploadFileHeader: boolean isFile> = $z1;	$r2 = specialinvoke r0.<cn.hutool.core.net.multipart.UploadFileHeader: java.lang.String getDataFieldValue(java.lang.String,java.lang.String)>(r1, "name");	r0.<cn.hutool.core.net.multipart.UploadFileHeader: java.lang.String formFieldName> = $r2;	$z0 = r0.<cn.hutool.core.net.multipart.UploadFileHeader: boolean isFile>;	if $z0 == 0 goto return;	return
;block_num 4