(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var32 0)
(declare-sort var1036 0)
(declare-sort var2090 0)
(declare-sort var1749 0)
(declare-sort var1077 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1036_getNameWithinArchive/376532842 (var1036) String)
(declare-fun resultCollector/-946691177 (var32) var1749)
(declare-fun toPackageDescriptor/1373827174 (var32 var1036) var1077)
(declare-fun var2090_isRootUrl/-337473363 (var2090) Bool)
(declare-fun handlePackage/-1143014254 (var1749 var1077 Bool) void)
(declare-const null-var32 var32)
(declare-const null-var1036 var1036)
(declare-const null-var2090 var2090)
(declare-const var428 var32) ; Statement: r2 := @this: org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler 
(assert (not (= var428 null-var32)))
(declare-const var1894 var1036) ; Statement: r0 := @parameter0: org.hibernate.boot.archive.spi.ArchiveEntry 
(assert (not (= var1894 null-var1036)))
(declare-const var649 var2090) ; Statement: r4 := @parameter1: org.hibernate.boot.archive.spi.ArchiveContext 
(assert (not (= var649 null-var2090)))
(define-const var3733 String (var1036_getNameWithinArchive/376532842 var1894)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.boot.archive.spi.ArchiveEntry: java.lang.String getNameWithinArchive()>() 
(assert true)
(define-const var1950 Bool (= var3733 "package-info.class")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("package-info.class") 
 ; Statement: if $z0 == 0 goto $r3 = r2.<org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler: org.hibernate.boot.archive.scan.internal.ScanResultCollector resultCollector> 
(assert (= (ite var1950 1 0) 0)) ; Cond: $z0 == 0 
(define-const var603 var1749 (resultCollector/-946691177 var428)) ; Statement: $r3 = r2.<org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler: org.hibernate.boot.archive.scan.internal.ScanResultCollector resultCollector> 
(assert true)
(define-const var1552 var1077 (toPackageDescriptor/1373827174 var428 var1894)) ; Statement: $r5 = virtualinvoke r2.<org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler: org.hibernate.boot.archive.scan.spi.PackageDescriptor toPackageDescriptor(org.hibernate.boot.archive.spi.ArchiveEntry)>(r0) 
(define-const var189 Bool (var2090_isRootUrl/-337473363 var649)) ; Statement: $z1 = interfaceinvoke r4.<org.hibernate.boot.archive.spi.ArchiveContext: boolean isRootUrl()>() 
(assert true)
;(assert (handlePackage/-1143014254 var603 var1552 var189)) ; Statement: virtualinvoke $r3.<org.hibernate.boot.archive.scan.internal.ScanResultCollector: void handlePackage(org.hibernate.boot.archive.scan.spi.PackageDescriptor,boolean)>($r5, $z1) 

(declare-const var603!1 var1749)
(declare-const var1552!1 var1077)
(declare-const var189!1 Bool)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1036_getNameWithinArchive/376532842=([org.hibernate.boot.archive.spi.ArchiveEntry], java.lang.String), resultCollector/-946691177=([org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler], org.hibernate.boot.archive.scan.internal.ScanResultCollector), toPackageDescriptor/1373827174=([org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler, org.hibernate.boot.archive.spi.ArchiveEntry], org.hibernate.boot.archive.scan.spi.PackageDescriptor), var2090_isRootUrl/-337473363=([org.hibernate.boot.archive.spi.ArchiveContext], boolean), handlePackage/-1143014254=([org.hibernate.boot.archive.scan.internal.ScanResultCollector, org.hibernate.boot.archive.scan.spi.PackageDescriptor, boolean], void)}
; {var32=org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler, var428=r2, var1036=org.hibernate.boot.archive.spi.ArchiveEntry, var1894=r0, var2090=org.hibernate.boot.archive.spi.ArchiveContext, var649=r4, var3733=$r1, var1950=$z0, var1749=org.hibernate.boot.archive.scan.internal.ScanResultCollector, var603=$r3, var1077=org.hibernate.boot.archive.scan.spi.PackageDescriptor, var1552=$r5, var189=$z1}
; {org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler=var32, r2=var428, org.hibernate.boot.archive.spi.ArchiveEntry=var1036, r0=var1894, org.hibernate.boot.archive.spi.ArchiveContext=var2090, r4=var649, $r1=var3733, $z0=var1950, org.hibernate.boot.archive.scan.internal.ScanResultCollector=var1749, $r3=var603, org.hibernate.boot.archive.scan.spi.PackageDescriptor=var1077, $r5=var1552, $z1=var189}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler;	r0 := @parameter0: org.hibernate.boot.archive.spi.ArchiveEntry;	r4 := @parameter1: org.hibernate.boot.archive.spi.ArchiveContext;	$r1 = interfaceinvoke r0.<org.hibernate.boot.archive.spi.ArchiveEntry: java.lang.String getNameWithinArchive()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("package-info.class");	if $z0 == 0 goto $r3 = r2.<org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler: org.hibernate.boot.archive.scan.internal.ScanResultCollector resultCollector>;	$r3 = r2.<org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler: org.hibernate.boot.archive.scan.internal.ScanResultCollector resultCollector>;	$r5 = virtualinvoke r2.<org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler: org.hibernate.boot.archive.scan.spi.PackageDescriptor toPackageDescriptor(org.hibernate.boot.archive.spi.ArchiveEntry)>(r0);	$z1 = interfaceinvoke r4.<org.hibernate.boot.archive.spi.ArchiveContext: boolean isRootUrl()>();	virtualinvoke $r3.<org.hibernate.boot.archive.scan.internal.ScanResultCollector: void handlePackage(org.hibernate.boot.archive.scan.spi.PackageDescriptor,boolean)>($r5, $z1);	return
;block_num 2