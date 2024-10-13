(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1506 0)
(declare-sort var2344 0)
(declare-sort var577 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2344_getNameWithinArchive/376532842 (var2344) String)
(declare-const null-var1506 var1506)
(declare-const null-var2344 var2344)
(declare-const null-var577 var577)
(declare-const var1910 var1506) ; Statement: r2 := @this: org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler 
(assert (not (= var1910 null-var1506)))
(declare-const var1582 var2344) ; Statement: r0 := @parameter0: org.hibernate.boot.archive.spi.ArchiveEntry 
(assert (not (= var1582 null-var2344)))
(declare-const var1631 var577) ; Statement: r4 := @parameter1: org.hibernate.boot.archive.spi.ArchiveContext 
(assert (not (= var1631 null-var577)))
(define-const var1402 String (var2344_getNameWithinArchive/376532842 var1582)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.boot.archive.spi.ArchiveEntry: java.lang.String getNameWithinArchive()>() 
(assert true)
(define-const var3645 Bool (= var1402 "package-info.class")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("package-info.class") 
 ; Statement: if $z0 == 0 goto $r3 = r2.<org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler: org.hibernate.boot.archive.scan.internal.ScanResultCollector resultCollector> 
(assert (not (= (ite var3645 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2344_getNameWithinArchive/376532842=([org.hibernate.boot.archive.spi.ArchiveEntry], java.lang.String)}
; {var1506=org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler, var1910=r2, var2344=org.hibernate.boot.archive.spi.ArchiveEntry, var1582=r0, var577=org.hibernate.boot.archive.spi.ArchiveContext, var1631=r4, var1402=$r1, var3645=$z0}
; {org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler=var1506, r2=var1910, org.hibernate.boot.archive.spi.ArchiveEntry=var2344, r0=var1582, org.hibernate.boot.archive.spi.ArchiveContext=var577, r4=var1631, $r1=var1402, $z0=var3645}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler;	r0 := @parameter0: org.hibernate.boot.archive.spi.ArchiveEntry;	r4 := @parameter1: org.hibernate.boot.archive.spi.ArchiveContext;	$r1 = interfaceinvoke r0.<org.hibernate.boot.archive.spi.ArchiveEntry: java.lang.String getNameWithinArchive()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("package-info.class");	if $z0 == 0 goto $r3 = r2.<org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler: org.hibernate.boot.archive.scan.internal.ScanResultCollector resultCollector>;	return
;block_num 2