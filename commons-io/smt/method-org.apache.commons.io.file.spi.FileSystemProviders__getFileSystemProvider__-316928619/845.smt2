(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2061 0)
(declare-sort var1486 0)
(declare-sort var1585 0)
(declare-sort var1658 0)
(declare-sort var1334 0)
(declare-sort var3297 0)
(declare-sort var2673 0)
(declare-sort var3812 0)
(declare-sort var872 0)
(declare-sort var3333 0)
(declare-sort var614 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1585_requireNonNull/1378936425 (var1658 String) var1658)
(declare-fun cast-from-String-to-var1658 (String) var1658)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun providers/-1670713937 (var2061) var1334)
(declare-fun var2673_stream/-1288525013 (var2673) var3297)
(declare-fun cast-from-var1334-to-var2673 (var1334) var2673)
(declare-fun var872_bootstrap$/55371934 (String) var3812)
(declare-fun var3297_filter/320182972 (var3297 var3812) var3297)
(declare-fun var3297_findFirst/-512239506 (var3297) var3333)
(declare-fun orElse/-757175127 (var3333 var1658) var1658)
(declare-fun cast-from-var1658-to-var614 (var1658) var614)
(declare-const null-var2061 var2061)
(declare-const null-String String)
(declare-const null-NullType var1486)
(declare-const null-var1658 var1658)
(declare-const var1544 var2061) ; Statement: r1 := @this: org.apache.commons.io.file.spi.FileSystemProviders 
(assert (not (= var1544 null-var2061)))
(declare-const var1685 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1685 null-String)))
;(assert (var1585_requireNonNull/1378936425 (cast-from-String-to-var1658 var1685) "scheme")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "scheme") 

(declare-const var1685!1 String)
(declare-const var114 String)
(assert true)
(define-const var1450 Bool (equalsIgnoreCase/-92311102 var1685!1 "file")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("file") 
 ; Statement: if $z0 == 0 goto $r2 = r1.<org.apache.commons.io.file.spi.FileSystemProviders: java.util.List providers> 
(assert (= (ite var1450 1 0) 0)) ; Cond: $z0 == 0 
(define-const var469 var1334 (providers/-1670713937 var1544)) ; Statement: $r2 = r1.<org.apache.commons.io.file.spi.FileSystemProviders: java.util.List providers> 
(define-const var3593 var3297 (var2673_stream/-1288525013 (cast-from-var1334-to-var2673 var469))) ; Statement: $r4 = interfaceinvoke $r2.<java.util.List: java.util.stream.Stream stream()>() 
(define-const var2596 var3812 (var872_bootstrap$/55371934 var1685!1)) ; Statement: $r3 = staticinvoke <org.apache.commons.io.file.spi.FileSystemProviders$lambda_getFileSystemProvider_0__120: java.util.function.Predicate bootstrap$(java.lang.String)>(r0) 
(define-const var3011 var3297 (var3297_filter/320182972 var3593 var2596)) ; Statement: $r5 = interfaceinvoke $r4.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r3) 
(define-const var2710 var3333 (var3297_findFirst/-512239506 var3011)) ; Statement: $r6 = interfaceinvoke $r5.<java.util.stream.Stream: java.util.Optional findFirst()>() 
(assert true)
(define-const var3905 var1658 (orElse/-757175127 var2710 null-var1658)) ; Statement: $r7 = virtualinvoke $r6.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null) 
(define-const var1053 var614 (cast-from-var1658-to-var614 var3905)) ; Statement: $r8 = (java.nio.file.spi.FileSystemProvider) $r7 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1585_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-String-to-var1658=([java.lang.String], java.lang.Object), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), providers/-1670713937=([org.apache.commons.io.file.spi.FileSystemProviders], java.util.List), var2673_stream/-1288525013=([java.util.Collection], java.util.stream.Stream), cast-from-var1334-to-var2673=([java.util.List], java.util.Collection), var872_bootstrap$/55371934=([java.lang.String], java.util.function.Predicate), var3297_filter/320182972=([java.util.stream.Stream, java.util.function.Predicate], java.util.stream.Stream), var3297_findFirst/-512239506=([java.util.stream.Stream], java.util.Optional), orElse/-757175127=([java.util.Optional, java.lang.Object], java.lang.Object), cast-from-var1658-to-var614=([java.lang.Object], java.nio.file.spi.FileSystemProvider)}
; {var2061=org.apache.commons.io.file.spi.FileSystemProviders, var1544=r1, var1685=r0, var1486=null_type, var1585=java.util.Objects, var1658=java.lang.Object, var114="scheme", var1450=$z0, var1334=java.util.List, var469=$r2, var3297=java.util.stream.Stream, var2673=java.util.Collection, var3593=$r4, var3812=java.util.function.Predicate, var872=org.apache.commons.io.file.spi.FileSystemProviders$lambda_getFileSystemProvider_0__120, var2596=$r3, var3011=$r5, var3333=java.util.Optional, var2710=$r6, var3905=$r7, var614=java.nio.file.spi.FileSystemProvider, var1053=$r8}
; {org.apache.commons.io.file.spi.FileSystemProviders=var2061, r1=var1544, r0=var1685, null_type=var1486, java.util.Objects=var1585, java.lang.Object=var1658, "scheme"=var114, $z0=var1450, java.util.List=var1334, $r2=var469, java.util.stream.Stream=var3297, java.util.Collection=var2673, $r4=var3593, java.util.function.Predicate=var3812, org.apache.commons.io.file.spi.FileSystemProviders$lambda_getFileSystemProvider_0__120=var872, $r3=var2596, $r5=var3011, java.util.Optional=var3333, $r6=var2710, $r7=var3905, java.nio.file.spi.FileSystemProvider=var614, $r8=var1053}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.commons.io.file.spi.FileSystemProviders;	r0 := @parameter0: java.lang.String;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "scheme");	$z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("file");	if $z0 == 0 goto $r2 = r1.<org.apache.commons.io.file.spi.FileSystemProviders: java.util.List providers>;	$r2 = r1.<org.apache.commons.io.file.spi.FileSystemProviders: java.util.List providers>;	$r4 = interfaceinvoke $r2.<java.util.List: java.util.stream.Stream stream()>();	$r3 = staticinvoke <org.apache.commons.io.file.spi.FileSystemProviders$lambda_getFileSystemProvider_0__120: java.util.function.Predicate bootstrap$(java.lang.String)>(r0);	$r5 = interfaceinvoke $r4.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r3);	$r6 = interfaceinvoke $r5.<java.util.stream.Stream: java.util.Optional findFirst()>();	$r7 = virtualinvoke $r6.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null);	$r8 = (java.nio.file.spi.FileSystemProvider) $r7;	return $r8
;block_num 2