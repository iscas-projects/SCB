(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1831 0)
(declare-sort var102 0)
(declare-sort var712 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var102_getNameWithinArchive/376532842 (var102) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun packageEntryHandler/-546192058 (var1831) var712)
(declare-const null-var1831 var1831)
(declare-const null-var102 var102)
(declare-const var3413 var1831) ; Statement: r2 := @this: org.hibernate.boot.archive.scan.spi.AbstractScannerImpl$ArchiveContextImpl 
(assert (not (= var3413 null-var1831)))
(declare-const var3298 var102) ; Statement: r0 := @parameter0: org.hibernate.boot.archive.spi.ArchiveEntry 
(assert (not (= var3298 null-var102)))
(define-const var1693 String (var102_getNameWithinArchive/376532842 var3298)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.boot.archive.spi.ArchiveEntry: java.lang.String getNameWithinArchive()>() 
(assert true)
(define-const var1117 Bool (endsWith/985337093 var1693 "package-info.class")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>("package-info.class") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>("module-info.class") 
(assert (not (= (ite var1117 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2967 var712 (packageEntryHandler/-546192058 var3413)) ; Statement: $r6 = r2.<org.hibernate.boot.archive.scan.spi.AbstractScannerImpl$ArchiveContextImpl: org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler packageEntryHandler> 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var102_getNameWithinArchive/376532842=([org.hibernate.boot.archive.spi.ArchiveEntry], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), packageEntryHandler/-546192058=([org.hibernate.boot.archive.scan.spi.AbstractScannerImpl$ArchiveContextImpl], org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler)}
; {var1831=org.hibernate.boot.archive.scan.spi.AbstractScannerImpl$ArchiveContextImpl, var3413=r2, var102=org.hibernate.boot.archive.spi.ArchiveEntry, var3298=r0, var1693=r1, var1117=$z0, var712=org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler, var2967=$r6}
; {org.hibernate.boot.archive.scan.spi.AbstractScannerImpl$ArchiveContextImpl=var1831, r2=var3413, org.hibernate.boot.archive.spi.ArchiveEntry=var102, r0=var3298, r1=var1693, $z0=var1117, org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler=var712, $r6=var2967}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r2 := @this: org.hibernate.boot.archive.scan.spi.AbstractScannerImpl$ArchiveContextImpl;	r0 := @parameter0: org.hibernate.boot.archive.spi.ArchiveEntry;	r1 = interfaceinvoke r0.<org.hibernate.boot.archive.spi.ArchiveEntry: java.lang.String getNameWithinArchive()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>("package-info.class");	if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>("module-info.class");	$r6 = r2.<org.hibernate.boot.archive.scan.spi.AbstractScannerImpl$ArchiveContextImpl: org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler packageEntryHandler>;	return $r6
;block_num 2