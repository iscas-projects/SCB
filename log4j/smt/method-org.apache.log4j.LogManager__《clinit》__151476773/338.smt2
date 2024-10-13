(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1853 0)
(declare-sort var756 0)
(declare-sort var535 0)
(declare-sort var2384 0)
(declare-sort var1069 0)
(declare-sort var3998 0)
(declare-sort var1128 0)
(declare-sort var3599 0)
(declare-sort var2925 0)
(declare-sort var1342 0)
(declare-sort var2689 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var756-init () var756)
(declare-fun var535-init () var535)
(declare-fun <init>/-1302314015 (var535 var2384) void)
(declare-fun <init>/-1719794184 (var756 var1069) void)
(declare-fun cast-from-var535-to-var1069 (var535) var1069)
(declare-fun var3998-init () var3998)
(declare-fun <init>/2087932561 (var3998 var1128) void)
(declare-fun cast-from-var756-to-var1128 (var756) var1128)
(declare-fun cast-from-var3998-to-var3599 (var3998) var3599)
(declare-fun var2925_getSystemProperty/16059058 (String String) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var2689_debug/381960894 (String) void)
(declare-const null-var1853 var1853)
(declare-const var2384-DEBUG var2384)
(declare-const null-String String)
(define-const var2062 var1853 null-var1853) ; Statement: <org.apache.log4j.LogManager: java.lang.Object guard> = null 
(define-const var2452 var756 var756-init) ; Statement: $r0 = new org.apache.log4j.Hierarchy 
(define-const var1157 var535 var535-init) ; Statement: $r1 = new org.apache.log4j.spi.RootLogger 
(define-const var1439 var2384 var2384-DEBUG) ; Statement: $r2 = <org.apache.log4j.Level: org.apache.log4j.Level DEBUG> 
(assert true)
;(assert (<init>/-1302314015 var1157 var1439)) ; Statement: specialinvoke $r1.<org.apache.log4j.spi.RootLogger: void <init>(org.apache.log4j.Level)>($r2) 

(declare-const var1157!1 var535)
(declare-const var1439!1 var2384)
(assert true)
;(assert (<init>/-1719794184 var2452 (cast-from-var535-to-var1069 var1157!1))) ; Statement: specialinvoke $r0.<org.apache.log4j.Hierarchy: void <init>(org.apache.log4j.Logger)>($r1) 

(declare-const var2452!1 var756)
(declare-const var1157!2 var535)
(define-const var2706 var3998 var3998-init) ; Statement: $r3 = new org.apache.log4j.spi.DefaultRepositorySelector 
(assert true)
;(assert (<init>/2087932561 var2706 (cast-from-var756-to-var1128 var2452!1))) ; Statement: specialinvoke $r3.<org.apache.log4j.spi.DefaultRepositorySelector: void <init>(org.apache.log4j.spi.LoggerRepository)>($r0) 

(declare-const var2706!1 var3998)
(declare-const var2452!2 var756)
(define-const var3055 var3599 (cast-from-var3998-to-var3599 var2706!1)) ; Statement: <org.apache.log4j.LogManager: org.apache.log4j.spi.RepositorySelector repositorySelector> = $r3 
(define-const var1772 String (var2925_getSystemProperty/16059058 "log4j.defaultInitOverride" null-String)) ; Statement: r4 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.String getSystemProperty(java.lang.String,java.lang.String)>("log4j.defaultInitOverride", null) 
 ; Statement: if r4 == null goto $r18 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.String getSystemProperty(java.lang.String,java.lang.String)>("log4j.configuration", null) 
(assert (not (= var1772 null-String))) ; Negate: Cond: r4 == null  
(define-const var933 String "false") ; Statement: $r17 = "false" 
(assert true)
(define-const var1833 Bool (equalsIgnoreCase/-92311102 var933 var1772)) ; Statement: $z0 = virtualinvoke $r17.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r4) 
 ; Statement: if $z0 == 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Default initialization of overridden by log4j.defaultInitOverrideproperty.") 
(assert (= (ite var1833 1 0) 0)) ; Cond: $z0 == 0 
;(assert (var2689_debug/381960894 "Default initialization of overridden by log4j.defaultInitOverrideproperty.")) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Default initialization of overridden by log4j.defaultInitOverrideproperty.") 

(declare-const var2386 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var756-init=([], org.apache.log4j.Hierarchy), var535-init=([], org.apache.log4j.spi.RootLogger), <init>/-1302314015=([org.apache.log4j.spi.RootLogger, org.apache.log4j.Level], void), <init>/-1719794184=([org.apache.log4j.Hierarchy, org.apache.log4j.Logger], void), cast-from-var535-to-var1069=([org.apache.log4j.spi.RootLogger], org.apache.log4j.Logger), var3998-init=([], org.apache.log4j.spi.DefaultRepositorySelector), <init>/2087932561=([org.apache.log4j.spi.DefaultRepositorySelector, org.apache.log4j.spi.LoggerRepository], void), cast-from-var756-to-var1128=([org.apache.log4j.Hierarchy], org.apache.log4j.spi.LoggerRepository), cast-from-var3998-to-var3599=([org.apache.log4j.spi.DefaultRepositorySelector], org.apache.log4j.spi.RepositorySelector), var2925_getSystemProperty/16059058=([java.lang.String, java.lang.String], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var2689_debug/381960894=([java.lang.String], void)}
; {var1853=java.lang.Object, var2062=<org.apache.log4j.LogManager: java.lang.Object guard>, var756=org.apache.log4j.Hierarchy, var2452=$r0, var535=org.apache.log4j.spi.RootLogger, var1157=$r1, var2384=org.apache.log4j.Level, var1439=$r2, var1069=org.apache.log4j.Logger, var3998=org.apache.log4j.spi.DefaultRepositorySelector, var2706=$r3, var1128=org.apache.log4j.spi.LoggerRepository, var3599=org.apache.log4j.spi.RepositorySelector, var3055=<org.apache.log4j.LogManager: org.apache.log4j.spi.RepositorySelector repositorySelector>, var2925=org.apache.log4j.helpers.OptionConverter, var1342=null_type, var1772=r4, var933=$r17, var1833=$z0, var2689=org.apache.log4j.helpers.LogLog, var2386="Default initialization of overridden by log4j.defaultInitOverrideproperty."}
; {java.lang.Object=var1853, <org.apache.log4j.LogManager: java.lang.Object guard>=var2062, org.apache.log4j.Hierarchy=var756, $r0=var2452, org.apache.log4j.spi.RootLogger=var535, $r1=var1157, org.apache.log4j.Level=var2384, $r2=var1439, org.apache.log4j.Logger=var1069, org.apache.log4j.spi.DefaultRepositorySelector=var3998, $r3=var2706, org.apache.log4j.spi.LoggerRepository=var1128, org.apache.log4j.spi.RepositorySelector=var3599, <org.apache.log4j.LogManager: org.apache.log4j.spi.RepositorySelector repositorySelector>=var3055, org.apache.log4j.helpers.OptionConverter=var2925, null_type=var1342, r4=var1772, $r17=var933, $z0=var1833, org.apache.log4j.helpers.LogLog=var2689, "Default initialization of overridden by log4j.defaultInitOverrideproperty."=var2386}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts <org.apache.log4j.LogManager: java.lang.Object guard> = null;	$r0 = new org.apache.log4j.Hierarchy;	$r1 = new org.apache.log4j.spi.RootLogger;	$r2 = <org.apache.log4j.Level: org.apache.log4j.Level DEBUG>;	specialinvoke $r1.<org.apache.log4j.spi.RootLogger: void <init>(org.apache.log4j.Level)>($r2);	specialinvoke $r0.<org.apache.log4j.Hierarchy: void <init>(org.apache.log4j.Logger)>($r1);	$r3 = new org.apache.log4j.spi.DefaultRepositorySelector;	specialinvoke $r3.<org.apache.log4j.spi.DefaultRepositorySelector: void <init>(org.apache.log4j.spi.LoggerRepository)>($r0);	<org.apache.log4j.LogManager: org.apache.log4j.spi.RepositorySelector repositorySelector> = $r3;	r4 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.String getSystemProperty(java.lang.String,java.lang.String)>("log4j.defaultInitOverride", null);	if r4 == null goto $r18 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.String getSystemProperty(java.lang.String,java.lang.String)>("log4j.configuration", null);	$r17 = "false";	$z0 = virtualinvoke $r17.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r4);	if $z0 == 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Default initialization of overridden by log4j.defaultInitOverrideproperty.");	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Default initialization of overridden by log4j.defaultInitOverrideproperty.");	return
;block_num 4