(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2120 0)
(declare-sort var2892 0)
(declare-sort var678 0)
(declare-sort var2003 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2892_getNameWithinArchive/376532842 (var2892) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun var678-init () var678)
(declare-fun var2892_getStreamAccess/-1114998757 (var2892) var2003)
(declare-fun <init>/1558045159 (var678 String var2003) void)
(declare-const null-var2120 var2120)
(declare-const null-var2892 var2892)
(declare-const var143 var2120) ; Statement: r6 := @this: org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler 
(assert (not (= var143 null-var2120)))
(declare-const var3170 var2892) ; Statement: r0 := @parameter0: org.hibernate.boot.archive.spi.ArchiveEntry 
(assert (not (= var3170 null-var2892)))
(define-const var397 String (var2892_getNameWithinArchive/376532842 var3170)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.boot.archive.spi.ArchiveEntry: java.lang.String getNameWithinArchive()>() 
(assert true)
(define-const var3256 Int (lastIndexOf/-1292097097 var397 47)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(47) 
(assert (and true (and (>= 0 0) (>= (str.len var397) var3256) (>= var3256 0))))
(define-const var1064 String (substring/-1240304868 var397 0 var3256)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i0) 
(assert true)
(define-const var1092 String (replace/1524665721 var1064 47 46)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
(define-const var3839 var678 var678-init) ; Statement: $r4 = new org.hibernate.boot.archive.scan.internal.PackageDescriptorImpl 
(define-const var2844 var2003 (var2892_getStreamAccess/-1114998757 var3170)) ; Statement: $r5 = interfaceinvoke r0.<org.hibernate.boot.archive.spi.ArchiveEntry: org.hibernate.boot.archive.spi.InputStreamAccess getStreamAccess()>() 
(assert true)
;(assert (<init>/1558045159 var3839 var1092 var2844)) ; Statement: specialinvoke $r4.<org.hibernate.boot.archive.scan.internal.PackageDescriptorImpl: void <init>(java.lang.String,org.hibernate.boot.archive.spi.InputStreamAccess)>(r3, $r5) 

(declare-const var3839!1 var678)
(declare-const var1092!1 String)
(declare-const var2844!1 var2003)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2892_getNameWithinArchive/376532842=([org.hibernate.boot.archive.spi.ArchiveEntry], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), var678-init=([], org.hibernate.boot.archive.scan.internal.PackageDescriptorImpl), var2892_getStreamAccess/-1114998757=([org.hibernate.boot.archive.spi.ArchiveEntry], org.hibernate.boot.archive.spi.InputStreamAccess), <init>/1558045159=([org.hibernate.boot.archive.scan.internal.PackageDescriptorImpl, java.lang.String, org.hibernate.boot.archive.spi.InputStreamAccess], void)}
; {var2120=org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler, var143=r6, var2892=org.hibernate.boot.archive.spi.ArchiveEntry, var3170=r0, var397=r1, var3256=$i0, var1064=$r2, var1092=r3, var678=org.hibernate.boot.archive.scan.internal.PackageDescriptorImpl, var3839=$r4, var2003=org.hibernate.boot.archive.spi.InputStreamAccess, var2844=$r5}
; {org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler=var2120, r6=var143, org.hibernate.boot.archive.spi.ArchiveEntry=var2892, r0=var3170, r1=var397, $i0=var3256, $r2=var1064, r3=var1092, org.hibernate.boot.archive.scan.internal.PackageDescriptorImpl=var678, $r4=var3839, org.hibernate.boot.archive.spi.InputStreamAccess=var2003, $r5=var2844}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r6 := @this: org.hibernate.boot.archive.scan.spi.PackageInfoArchiveEntryHandler;	r0 := @parameter0: org.hibernate.boot.archive.spi.ArchiveEntry;	r1 = interfaceinvoke r0.<org.hibernate.boot.archive.spi.ArchiveEntry: java.lang.String getNameWithinArchive()>();	$i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(47);	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i0);	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	$r4 = new org.hibernate.boot.archive.scan.internal.PackageDescriptorImpl;	$r5 = interfaceinvoke r0.<org.hibernate.boot.archive.spi.ArchiveEntry: org.hibernate.boot.archive.spi.InputStreamAccess getStreamAccess()>();	specialinvoke $r4.<org.hibernate.boot.archive.scan.internal.PackageDescriptorImpl: void <init>(java.lang.String,org.hibernate.boot.archive.spi.InputStreamAccess)>(r3, $r5);	return $r4
;block_num 1