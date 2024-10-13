(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2911 0)
(declare-sort var1817 0)
(declare-sort var1477 0)
(declare-sort var25 0)
(declare-sort var1877 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toUpperCase/1156088314 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))
(declare-fun var1477_containsKey/1715618542 (var1477 var2911) Bool)
(declare-fun cast-from-String-to-var2911 (String) var2911)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1877_warning/-2079397673 (var2911 String) void)
(declare-const null-var2911 var2911)
(declare-const null-String String)
(declare-const var25-optionValues var1477)
(declare-const var2189 var2911) ; Statement: r36 := @parameter0: java.lang.Object 
(assert (not (= var2189 null-var2911)))
(declare-const var2673 var2911) ; Statement: r10 := @parameter1: java.lang.Object 
(assert (not (= var2673 null-var2911)))
(declare-const var1809 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var1809 null-String)))
(declare-const var601 var2911) ; Statement: r54 := @parameter3: java.lang.Object 
(assert (not (= var601 null-var2911)))
(assert true)
(define-const var276 String (toUpperCase/1156088314 var1809)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase()>() 
(define-const var3315 var1477 var25-optionValues) ; Statement: $r2 = <org.javacc.parser.Options: java.util.Map optionValues> 
(define-const var903 Bool (var1477_containsKey/1715618542 var3315 (cast-from-String-to-var2911 var276))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.Map: boolean containsKey(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $r3 = <org.javacc.parser.Options: java.util.Map optionValues> 
(assert (not (not (= (ite var903 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3039 String String-init) ; Statement: $r49 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3039)) ; Statement: specialinvoke $r49.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3039!1 String)
(assert (= var3039!1 ""))
(assert true)
(define-const var1125 String (append/672562846 var3039!1 "Bad option name \u0022")) ; Statement: $r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bad option name \"") 
(declare-const var3039!2 String)
(assert (= var3039!2 (str.++ var3039!1 "Bad option name \u0022")))
(assert true)
(define-const var1682 String (append/672562846 var1125 var1809)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1125!1 String)
(assert (= var1125!1 (str.++ var1125 var1809)))
(assert true)
(define-const var680 String (append/672562846 var1682 "\u0022.  Option setting will be ignored.")) ; Statement: $r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\".  Option setting will be ignored.") 
(declare-const var1682!1 String)
(assert (= var1682!1 (str.++ var1682 "\u0022.  Option setting will be ignored.")))
(assert true)
(define-const var2882 String (toString/-2075883882 var680)) ; Statement: $r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1877_warning/-2079397673 var2189 var2882)) ; Statement: staticinvoke <org.javacc.parser.JavaCCErrors: void warning(java.lang.Object,java.lang.String)>(r36, $r53) 

(declare-const var2189!1 var2911)
(declare-const var2882!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toUpperCase/1156088314=([java.lang.String], java.lang.String), var1477_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-String-to-var2911=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1877_warning/-2079397673=([java.lang.Object, java.lang.String], void)}
; {var2911=java.lang.Object, var2189=r36, var2673=r10, var1809=r0, var1817=null_type, var601=r54, var276=r1, var1477=java.util.Map, var25=org.javacc.parser.Options, var3315=$r2, var903=$z0, var3039=$r49, var1125=$r50, var1682=$r51, var680=$r52, var2882=$r53, var1877=org.javacc.parser.JavaCCErrors}
; {java.lang.Object=var2911, r36=var2189, r10=var2673, r0=var1809, null_type=var1817, r54=var601, r1=var276, java.util.Map=var1477, org.javacc.parser.Options=var25, $r2=var3315, $z0=var903, $r49=var3039, $r50=var1125, $r51=var1682, $r52=var680, $r53=var2882, org.javacc.parser.JavaCCErrors=var1877}
;seq <java.lang.String: java.lang.String toUpperCase()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String toUpperCase()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r36 := @parameter0: java.lang.Object;	r10 := @parameter1: java.lang.Object;	r0 := @parameter2: java.lang.String;	r54 := @parameter3: java.lang.Object;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase()>();	$r2 = <org.javacc.parser.Options: java.util.Map optionValues>;	$z0 = interfaceinvoke $r2.<java.util.Map: boolean containsKey(java.lang.Object)>(r1);	if $z0 != 0 goto $r3 = <org.javacc.parser.Options: java.util.Map optionValues>;	$r49 = new java.lang.StringBuilder;	specialinvoke $r49.<java.lang.StringBuilder: void <init>()>();	$r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bad option name \"");	$r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\".  Option setting will be ignored.");	$r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.javacc.parser.JavaCCErrors: void warning(java.lang.Object,java.lang.String)>(r36, $r53);	return
;block_num 2