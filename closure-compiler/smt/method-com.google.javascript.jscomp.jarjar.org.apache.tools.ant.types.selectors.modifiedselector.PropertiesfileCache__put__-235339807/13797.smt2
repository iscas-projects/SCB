(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var62 0)
(declare-sort var326 0)
(declare-sort var3961 0)
(declare-sort var1338 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cache/441988123 (var62) var3961)
(declare-fun String_valueOf/-333372740 (var326) String)
(declare-fun put/1981026245 (var1338 var326 var326) var326)
(declare-fun cast-from-var3961-to-var1338 (var3961) var1338)
(declare-fun cast-from-String-to-var326 (String) var326)
(declare-fun cacheDirty/441988123 (var62) Bool)
(declare-const null-var62 var62)
(declare-const null-var326 var326)
(declare-const var390 var62) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.PropertiesfileCache 
(assert (not (= var390 null-var62)))
(declare-const var894 var326) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var894 null-var326)))
(declare-const var1120 var326) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var1120 null-var326)))
(define-const var3052 var3961 (cache/441988123 var390)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.PropertiesfileCache: java.util.Properties cache> 
(define-const var2069 String (String_valueOf/-333372740 var894)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(define-const var1758 String (String_valueOf/-333372740 var1120)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r3) 
(assert true)
;(assert (put/1981026245 (cast-from-var3961-to-var1338 var3052) (cast-from-String-to-var326 var2069) (cast-from-String-to-var326 var1758))) ; Statement: virtualinvoke $r2.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>($r5, $r4) 

(declare-const var3052!1 var3961)
(declare-const var2069!1 String)
(declare-const var1758!1 String)
(declare-const var390!1 var62)
(assert (not (= var390!1 null-var62)))
(assert (= (cacheDirty/441988123 var390!1) (ite (= 1 1) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.PropertiesfileCache: boolean cacheDirty> = 1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cache/441988123=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.PropertiesfileCache], java.util.Properties), String_valueOf/-333372740=([java.lang.Object], java.lang.String), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3961-to-var1338=([java.util.Properties], java.util.Hashtable), cast-from-String-to-var326=([java.lang.String], java.lang.Object), cacheDirty/441988123=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.PropertiesfileCache], boolean)}
; {var62=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.PropertiesfileCache, var390=r0, var326=java.lang.Object, var894=r1, var1120=r3, var3961=java.util.Properties, var3052=$r2, var2069=$r5, var1758=$r4, var1338=java.util.Hashtable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.PropertiesfileCache=var62, r0=var390, java.lang.Object=var326, r1=var894, r3=var1120, java.util.Properties=var3961, $r2=var3052, $r5=var2069, $r4=var1758, java.util.Hashtable=var1338}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.PropertiesfileCache;	r1 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Object;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.PropertiesfileCache: java.util.Properties cache>;	$r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r3);	virtualinvoke $r2.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>($r5, $r4);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.PropertiesfileCache: boolean cacheDirty> = 1;	return
;block_num 1