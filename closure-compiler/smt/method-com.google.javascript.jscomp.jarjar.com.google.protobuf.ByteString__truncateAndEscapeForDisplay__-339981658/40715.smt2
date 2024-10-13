(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1898 0)
(declare-sort var635 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/716358372 (var1898) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun substring/-1257650724 (var1898 Int Int) var1898)
(declare-fun var635_escapeBytes/384062248 (var1898) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1898 var1898)
(declare-const var1293 var1898) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString 
(assert (not (= var1293 null-var1898)))
(assert true)
(define-const var1420 Int (size/716358372 var1293)) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>() 
 ; Statement: if $i0 > 50 goto $r1 = new java.lang.StringBuilder 
(assert (> var1420 50)) ; Cond: $i0 > 50 
(define-const var1094 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1094)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1094!1 String)
(assert (= var1094!1 ""))
(assert true)
(define-const var2690 var1898 (substring/-1257650724 var1293 0 47)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString substring(int,int)>(0, 47) 
(define-const var2056 String (var635_escapeBytes/384062248 var2690)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatEscaper: java.lang.String escapeBytes(com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString)>($r2) 
(assert true)
(define-const var3961 String (append/672562846 var1094!1 var2056)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1094!2 String)
(assert (= var1094!2 (str.++ var1094!1 var2056)))
(assert true)
(define-const var1409 String (append/672562846 var3961 "...")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("...") 
(declare-const var3961!1 String)
(assert (= var3961!1 (str.++ var3961 "...")))
(assert true)
(define-const var1317 String (toString/-2075883882 var1409)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {size/716358372=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), substring/-1257650724=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString, int, int], com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString), var635_escapeBytes/384062248=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1898=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString, var1293=r0, var1420=$i0, var1094=$r1, var2690=$r2, var635=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatEscaper, var2056=$r3, var3961=$r4, var1409=$r5, var1317=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString=var1898, r0=var1293, $i0=var1420, $r1=var1094, $r2=var2690, com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatEscaper=var635, $r3=var2056, $r4=var3961, $r5=var1409, $r6=var1317}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString;	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>();	if $i0 > 50 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString substring(int,int)>(0, 47);	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatEscaper: java.lang.String escapeBytes(com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString)>($r2);	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("...");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3