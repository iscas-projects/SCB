(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2213 0)
(declare-sort var398 0)
(declare-sort var2371 0)
(declare-sort var2344 0)
(declare-sort var3077 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun throwExceptionIfReadOnly/55912360 (var2371) void)
(declare-fun cast-from-var2213-to-var2371 (var2213) var2371)
(declare-fun var2344-init () var2344)
(declare-fun <init>/1168562472 (var2344 var398) void)
(declare-const null-var2213 var2213)
(declare-const null-var398 var398)
(declare-const null-var3077 var3077)
(declare-const var2754 var2213) ; Statement: r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage 
(assert (not (= var2754 null-var2213)))
(declare-const var2223 var398) ; Statement: r1 := @parameter0: java.io.OutputStream 
(assert (not (= var2223 null-var398)))
(assert true)
;(assert (throwExceptionIfReadOnly/55912360 (cast-from-var2213-to-var2371 var2754))) ; Statement: virtualinvoke r0.<org.apache.poi.openxml4j.opc.ZipPackage: void throwExceptionIfReadOnly()>() 

(declare-const var2754!1 var2213)
(define-const var1623 Bool true) ; Statement: $z0 = r1 instanceof org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream 
 ; Statement: if $z0 == 0 goto $r56 = new org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream 
(assert (= (ite var1623 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2594 var2344 var2344-init) ; Statement: $r56 = new org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream 
(define-const var1502 var2344 var2594) ; Statement: $r45 = $r56 
(assert true)
;(assert (<init>/1168562472 var2594 var2223)) ; Statement: specialinvoke $r56.<org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream: void <init>(java.io.OutputStream)>(r1) 

(declare-const var2594!1 var2344)
(declare-const var2223!1 var398)
(assert true) ; Non Conditional
(define-const var1937 var2344 var1502) ; Statement: r2 = $r45 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2381 var3077) ; Statement: $r44 := @caughtexception 
(assert (not (= var2381 null-var3077)))
 ; Statement: throw $r44 
(check-sat)
(get-model)
(get-unsat-core)
; {throwExceptionIfReadOnly/55912360=([org.apache.poi.openxml4j.opc.OPCPackage], void), cast-from-var2213-to-var2371=([org.apache.poi.openxml4j.opc.ZipPackage], org.apache.poi.openxml4j.opc.OPCPackage), var2344-init=([], org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream), <init>/1168562472=([org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream, java.io.OutputStream], void)}
; {var2213=org.apache.poi.openxml4j.opc.ZipPackage, var2754=r0, var398=java.io.OutputStream, var2223=r1, var2371=org.apache.poi.openxml4j.opc.OPCPackage, var1623=$z0, var2344=org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream, var2594=$r56, var1502=$r45, var1937=r2, var3077=org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException, var2381=$r44}
; {org.apache.poi.openxml4j.opc.ZipPackage=var2213, r0=var2754, java.io.OutputStream=var398, r1=var2223, org.apache.poi.openxml4j.opc.OPCPackage=var2371, $z0=var1623, org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream=var2344, $r56=var2594, $r45=var1502, r2=var1937, org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException=var3077, $r44=var2381}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage;	r1 := @parameter0: java.io.OutputStream;	virtualinvoke r0.<org.apache.poi.openxml4j.opc.ZipPackage: void throwExceptionIfReadOnly()>();	$z0 = r1 instanceof org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream;	if $z0 == 0 goto $r56 = new org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream;	$r56 = new org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream;	$r45 = $r56;	specialinvoke $r56.<org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream: void <init>(java.io.OutputStream)>(r1);	r2 = $r45;	$r44 := @caughtexception;	throw $r44
;block_num 4