(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3782 0)
(declare-sort var1317 0)
(declare-sort var1536 0)
(declare-sort var1446 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1446) void)
(declare-fun cast-from-var3782-to-var1446 (var3782) var1446)
(declare-fun name/1896754499 (var3782) String)
(declare-fun file/1896754499 (var3782) var1536)
(declare-fun exists/1072868559 (var1536) Bool)
(declare-const null-var3782 var3782)
(declare-const null-String String)
(declare-const null-var1536 var1536)
(declare-const var1377 var3782) ; Statement: r0 := @this: org.hibernate.boot.archive.internal.FileInputStreamAccess 
(assert (not (= var1377 null-var3782)))
(declare-const var2718 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2718 null-String)))
(declare-const var3143 var1536) ; Statement: r2 := @parameter1: java.io.File 
(assert (not (= var3143 null-var1536)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3782-to-var1446 var1377))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1377!1 var3782)
(declare-const var1377!2 var3782)
(assert (not (= var1377!2 null-var3782)))
(assert (= (name/1896754499 var1377!2) var2718)) ; Statement: r0.<org.hibernate.boot.archive.internal.FileInputStreamAccess: java.lang.String name> = r1 
(declare-const var1377!3 var3782)
(assert (not (= var1377!3 null-var3782)))
(assert (= (file/1896754499 var1377!3) var3143)) ; Statement: r0.<org.hibernate.boot.archive.internal.FileInputStreamAccess: java.io.File file> = r2 
(assert true)
(define-const var851 Bool (exists/1072868559 var3143)) ; Statement: $z0 = virtualinvoke r2.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var851 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3782-to-var1446=([org.hibernate.boot.archive.internal.FileInputStreamAccess], java.lang.Object), name/1896754499=([org.hibernate.boot.archive.internal.FileInputStreamAccess], java.lang.String), file/1896754499=([org.hibernate.boot.archive.internal.FileInputStreamAccess], java.io.File), exists/1072868559=([java.io.File], boolean)}
; {var3782=org.hibernate.boot.archive.internal.FileInputStreamAccess, var1377=r0, var2718=r1, var1317=null_type, var1536=java.io.File, var3143=r2, var1446=java.lang.Object, var851=$z0}
; {org.hibernate.boot.archive.internal.FileInputStreamAccess=var3782, r0=var1377, r1=var2718, null_type=var1317, java.io.File=var1536, r2=var3143, java.lang.Object=var1446, $z0=var851}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.archive.internal.FileInputStreamAccess;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.io.File;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.boot.archive.internal.FileInputStreamAccess: java.lang.String name> = r1;	r0.<org.hibernate.boot.archive.internal.FileInputStreamAccess: java.io.File file> = r2;	$z0 = virtualinvoke r2.<java.io.File: boolean exists()>();	if $z0 != 0 goto return;	return
;block_num 2