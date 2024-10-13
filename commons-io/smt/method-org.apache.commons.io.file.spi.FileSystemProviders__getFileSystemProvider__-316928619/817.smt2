(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1388 0)
(declare-sort var1317 0)
(declare-sort var3832 0)
(declare-sort var165 0)
(declare-sort var1269 0)
(declare-sort var3119 0)
(declare-sort var430 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3832_requireNonNull/1378936425 (var165 String) var165)
(declare-fun cast-from-String-to-var165 (String) var165)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var3119_getDefault/273610319 () var1269)
(declare-fun provider/-2118809649 (var1269) var430)
(declare-const null-var1388 var1388)
(declare-const null-String String)
(declare-const var214 var1388) ; Statement: r1 := @this: org.apache.commons.io.file.spi.FileSystemProviders 
(assert (not (= var214 null-var1388)))
(declare-const var903 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var903 null-String)))
;(assert (var3832_requireNonNull/1378936425 (cast-from-String-to-var165 var903) "scheme")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "scheme") 

(declare-const var903!1 String)
(declare-const var1382 String)
(assert true)
(define-const var2595 Bool (equalsIgnoreCase/-92311102 var903!1 "file")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("file") 
 ; Statement: if $z0 == 0 goto $r2 = r1.<org.apache.commons.io.file.spi.FileSystemProviders: java.util.List providers> 
(assert (not (= (ite var2595 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var134 var1269 var3119_getDefault/273610319) ; Statement: $r9 = staticinvoke <java.nio.file.FileSystems: java.nio.file.FileSystem getDefault()>() 
(assert true)
(define-const var3366 var430 (provider/-2118809649 var134)) ; Statement: $r10 = virtualinvoke $r9.<java.nio.file.FileSystem: java.nio.file.spi.FileSystemProvider provider()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var3832_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-String-to-var165=([java.lang.String], java.lang.Object), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var3119_getDefault/273610319=([], java.nio.file.FileSystem), provider/-2118809649=([java.nio.file.FileSystem], java.nio.file.spi.FileSystemProvider)}
; {var1388=org.apache.commons.io.file.spi.FileSystemProviders, var214=r1, var903=r0, var1317=null_type, var3832=java.util.Objects, var165=java.lang.Object, var1382="scheme", var2595=$z0, var1269=java.nio.file.FileSystem, var3119=java.nio.file.FileSystems, var134=$r9, var430=java.nio.file.spi.FileSystemProvider, var3366=$r10}
; {org.apache.commons.io.file.spi.FileSystemProviders=var1388, r1=var214, r0=var903, null_type=var1317, java.util.Objects=var3832, java.lang.Object=var165, "scheme"=var1382, $z0=var2595, java.nio.file.FileSystem=var1269, java.nio.file.FileSystems=var3119, $r9=var134, java.nio.file.spi.FileSystemProvider=var430, $r10=var3366}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.commons.io.file.spi.FileSystemProviders;	r0 := @parameter0: java.lang.String;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "scheme");	$z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("file");	if $z0 == 0 goto $r2 = r1.<org.apache.commons.io.file.spi.FileSystemProviders: java.util.List providers>;	$r9 = staticinvoke <java.nio.file.FileSystems: java.nio.file.FileSystem getDefault()>();	$r10 = virtualinvoke $r9.<java.nio.file.FileSystem: java.nio.file.spi.FileSystemProvider provider()>();	return $r10
;block_num 2