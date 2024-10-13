(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var467 0)
(declare-sort var926 0)
(declare-sort var1150 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var926_getName/-1063937723 (var926) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun options/324957297 (var467) var1150)
(declare-fun var1150_canDetectHibernateMappingFiles/1078154563 (var1150) Bool)
(declare-const null-var467 var467)
(declare-const null-var926 var926)
(declare-const null-Bool Bool)
(declare-const var3467 var467) ; Statement: r3 := @this: org.hibernate.boot.archive.scan.internal.ScanResultCollector 
(assert (not (= var3467 null-var467)))
(declare-const var2603 var926) ; Statement: r0 := @parameter0: org.hibernate.boot.archive.scan.spi.MappingFileDescriptor 
(assert (not (= var2603 null-var926)))
(declare-const var75 Bool) ; Statement: z4 := @parameter1: boolean 
(assert (not (= var75 null-Bool)))
(define-const var1010 String (var926_getName/-1063937723 var2603)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.boot.archive.scan.spi.MappingFileDescriptor: java.lang.String getName()>() 
(assert true)
(define-const var3970 Bool (endsWith/985337093 var1010 "hbm.xml")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>("hbm.xml") 
 ; Statement: if $z0 == 0 goto $r2 = interfaceinvoke r0.<org.hibernate.boot.archive.scan.spi.MappingFileDescriptor: java.lang.String getName()>() 
(assert (not (= (ite var3970 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var157 var1150 (options/324957297 var3467)) ; Statement: $r9 = r3.<org.hibernate.boot.archive.scan.internal.ScanResultCollector: org.hibernate.boot.archive.scan.spi.ScanOptions options> 
(define-const var863 Bool (var1150_canDetectHibernateMappingFiles/1078154563 var157)) ; Statement: $z5 = interfaceinvoke $r9.<org.hibernate.boot.archive.scan.spi.ScanOptions: boolean canDetectHibernateMappingFiles()>() 
 ; Statement: return $z5 
(check-sat)
(get-model)
(get-unsat-core)
; {var926_getName/-1063937723=([org.hibernate.boot.archive.scan.spi.MappingFileDescriptor], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), options/324957297=([org.hibernate.boot.archive.scan.internal.ScanResultCollector], org.hibernate.boot.archive.scan.spi.ScanOptions), var1150_canDetectHibernateMappingFiles/1078154563=([org.hibernate.boot.archive.scan.spi.ScanOptions], boolean)}
; {var467=org.hibernate.boot.archive.scan.internal.ScanResultCollector, var3467=r3, var926=org.hibernate.boot.archive.scan.spi.MappingFileDescriptor, var2603=r0, var75=z4, var1010=$r1, var3970=$z0, var1150=org.hibernate.boot.archive.scan.spi.ScanOptions, var157=$r9, var863=$z5}
; {org.hibernate.boot.archive.scan.internal.ScanResultCollector=var467, r3=var3467, org.hibernate.boot.archive.scan.spi.MappingFileDescriptor=var926, r0=var2603, z4=var75, $r1=var1010, $z0=var3970, org.hibernate.boot.archive.scan.spi.ScanOptions=var1150, $r9=var157, $z5=var863}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r3 := @this: org.hibernate.boot.archive.scan.internal.ScanResultCollector;	r0 := @parameter0: org.hibernate.boot.archive.scan.spi.MappingFileDescriptor;	z4 := @parameter1: boolean;	$r1 = interfaceinvoke r0.<org.hibernate.boot.archive.scan.spi.MappingFileDescriptor: java.lang.String getName()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>("hbm.xml");	if $z0 == 0 goto $r2 = interfaceinvoke r0.<org.hibernate.boot.archive.scan.spi.MappingFileDescriptor: java.lang.String getName()>();	$r9 = r3.<org.hibernate.boot.archive.scan.internal.ScanResultCollector: org.hibernate.boot.archive.scan.spi.ScanOptions options>;	$z5 = interfaceinvoke $r9.<org.hibernate.boot.archive.scan.spi.ScanOptions: boolean canDetectHibernateMappingFiles()>();	return $z5
;block_num 2