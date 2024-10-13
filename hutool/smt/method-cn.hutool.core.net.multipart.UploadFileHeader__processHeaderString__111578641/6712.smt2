(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3703 0)
(declare-sort var2109 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-fun isFile/1622019174 (var3703) Bool)
(declare-fun getDataFieldValue/993614853 (var3703 String String) String)
(declare-fun formFieldName/1622019174 (var3703) String)
(declare-const null-var3703 var3703)
(declare-const null-String String)
(declare-const var3779 var3703) ; Statement: r0 := @this: cn.hutool.core.net.multipart.UploadFileHeader 
(assert (not (= var3779 null-var3703)))
(declare-const var766 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var766 null-String)))
(assert true)
(define-const var172 Int (indexOf/-1209756239 var766 "filename")) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>("filename") 
 ; Statement: if $i0 <= 0 goto $z1 = 0 
(assert (not (<= var172 0))) ; Negate: Cond: $i0 <= 0  
(define-const var101 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= r0.<cn.hutool.core.net.multipart.UploadFileHeader: boolean isFile> = $z1] 
(assert true) ; Non Conditional
(declare-const var3779!1 var3703)
(assert (not (= var3779!1 null-var3703)))
(assert (= (isFile/1622019174 var3779!1) var101)) ; Statement: r0.<cn.hutool.core.net.multipart.UploadFileHeader: boolean isFile> = $z1 
(assert true)
(define-const var3797 String (getDataFieldValue/993614853 var3779!1 var766 "name")) ; Statement: $r2 = specialinvoke r0.<cn.hutool.core.net.multipart.UploadFileHeader: java.lang.String getDataFieldValue(java.lang.String,java.lang.String)>(r1, "name") 
(declare-const var3779!2 var3703)
(assert (not (= var3779!2 null-var3703)))
(assert (= (formFieldName/1622019174 var3779!2) var3797)) ; Statement: r0.<cn.hutool.core.net.multipart.UploadFileHeader: java.lang.String formFieldName> = $r2 
(define-const var3814 Bool (isFile/1622019174 var3779!2)) ; Statement: $z0 = r0.<cn.hutool.core.net.multipart.UploadFileHeader: boolean isFile> 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var3814 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), isFile/1622019174=([cn.hutool.core.net.multipart.UploadFileHeader], boolean), getDataFieldValue/993614853=([cn.hutool.core.net.multipart.UploadFileHeader, java.lang.String, java.lang.String], java.lang.String), formFieldName/1622019174=([cn.hutool.core.net.multipart.UploadFileHeader], java.lang.String)}
; {var3703=cn.hutool.core.net.multipart.UploadFileHeader, var3779=r0, var766=r1, var2109=null_type, var172=$i0, var101=$z1, var3797=$r2, var3814=$z0}
; {cn.hutool.core.net.multipart.UploadFileHeader=var3703, r0=var3779, r1=var766, null_type=var2109, $i0=var172, $z1=var101, $r2=var3797, $z0=var3814}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r0 := @this: cn.hutool.core.net.multipart.UploadFileHeader;	r1 := @parameter0: java.lang.String;	$i0 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>("filename");	if $i0 <= 0 goto $z1 = 0;	$z1 = 1;	goto [?= r0.<cn.hutool.core.net.multipart.UploadFileHeader: boolean isFile> = $z1];	r0.<cn.hutool.core.net.multipart.UploadFileHeader: boolean isFile> = $z1;	$r2 = specialinvoke r0.<cn.hutool.core.net.multipart.UploadFileHeader: java.lang.String getDataFieldValue(java.lang.String,java.lang.String)>(r1, "name");	r0.<cn.hutool.core.net.multipart.UploadFileHeader: java.lang.String formFieldName> = $r2;	$z0 = r0.<cn.hutool.core.net.multipart.UploadFileHeader: boolean isFile>;	if $z0 == 0 goto return;	return
;block_num 4