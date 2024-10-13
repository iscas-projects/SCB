(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2191 0)
(declare-sort var3608 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getNodeTypeSymbol/-311850968 (var3608) String)
(declare-fun cast-from-var2191-to-var3608 (var2191) var3608)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2191 var2191)
(declare-const var3149 var2191) ; Statement: r1 := @this: freemarker.core.BuiltInWithParseTimeParameters 
(assert (not (= var3149 null-var2191)))
(define-const var1106 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1106)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1106!1 String)
(assert (= var1106!1 ""))
(assert true)
(define-const var3737 String (getNodeTypeSymbol/-311850968 (cast-from-var2191-to-var3608 var3149))) ; Statement: $r2 = specialinvoke r1.<freemarker.core.SpecialBuiltIn: java.lang.String getNodeTypeSymbol()>() 
(assert true)
(define-const var1214 String (append/672562846 var1106!1 var3737)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1106!2 String)
(assert (= var1106!2 (str.++ var1106!1 var3737)))
(assert true)
(define-const var2196 String (append/672562846 var1214 "(...)")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(...)") 
(declare-const var1214!1 String)
(assert (= var1214!1 (str.++ var1214 "(...)")))
(assert true)
(define-const var386 String (toString/-2075883882 var2196)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getNodeTypeSymbol/-311850968=([freemarker.core.BuiltIn], java.lang.String), cast-from-var2191-to-var3608=([freemarker.core.BuiltInWithParseTimeParameters], freemarker.core.BuiltIn), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2191=freemarker.core.BuiltInWithParseTimeParameters, var3149=r1, var1106=$r0, var3608=freemarker.core.BuiltIn, var3737=$r2, var1214=$r3, var2196=$r4, var386=$r5}
; {freemarker.core.BuiltInWithParseTimeParameters=var2191, r1=var3149, $r0=var1106, freemarker.core.BuiltIn=var3608, $r2=var3737, $r3=var1214, $r4=var2196, $r5=var386}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.BuiltInWithParseTimeParameters;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<freemarker.core.SpecialBuiltIn: java.lang.String getNodeTypeSymbol()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(...)");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1