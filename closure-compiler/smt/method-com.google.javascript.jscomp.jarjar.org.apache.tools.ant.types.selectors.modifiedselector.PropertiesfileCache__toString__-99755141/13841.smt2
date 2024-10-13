(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2686 0)
(declare-sort var2441 0)
(declare-sort var3830 0)
(declare-sort var1674 0)
(declare-sort var2675 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2441-init () (Array Int var2441))
(declare-fun cachefile/441988123 (var2686) var3830)
(declare-fun cast-from-var3830-to-var2441 (var3830) var2441)
(declare-fun cache/441988123 (var2686) var1674)
(declare-fun size/-623529951 (var2675) Int)
(declare-fun cast-from-var1674-to-var2675 (var1674) var2675)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2441 (Int) var2441)
(declare-fun String_format/1339386452 (String (Array Int var2441)) String)
(declare-const null-var2686 var2686)
(declare-const null-__Array__Int__var2441__ (Array Int var2441))
(declare-const var2039 var2686) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.PropertiesfileCache 
(assert (not (= var2039 null-var2686)))
(define-const var469 (Array Int var2441) arr-var2441-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(define-const var276 var3830 (cachefile/441988123 var2039)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.PropertiesfileCache: java.io.File cachefile> 
(declare-const var469!1 (Array Int var2441))
(assert (not (= var469!1 null-__Array__Int__var2441__)))
(assert (= (select var469!1 0) (cast-from-var3830-to-var2441 var276))) ; Statement: $r0[0] = $r2 
(define-const var2052 var1674 (cache/441988123 var2039)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.PropertiesfileCache: java.util.Properties cache> 
(assert true)
(define-const var3311 Int (size/-623529951 (cast-from-var1674-to-var2675 var2052))) ; Statement: $i0 = virtualinvoke $r3.<java.util.Properties: int size()>() 
(define-const var3209 Int (Int_valueOf/-1371140006 var3311)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var469!2 (Array Int var2441))
(assert (not (= var469!2 null-__Array__Int__var2441__)))
(assert (= (select var469!2 1) (cast-from-Int-to-var2441 var3209))) ; Statement: $r0[1] = $r4 
(define-const var19 String (String_format/1339386452 "<PropertiesfileCache:cachefile=%s;noOfEntries=%d>" var469!2)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("<PropertiesfileCache:cachefile=%s;noOfEntries=%d>", $r0) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2441-init=([], java.lang.Object[]), cachefile/441988123=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.PropertiesfileCache], java.io.File), cast-from-var3830-to-var2441=([java.io.File], java.lang.Object), cache/441988123=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.PropertiesfileCache], java.util.Properties), size/-623529951=([java.util.Hashtable], int), cast-from-var1674-to-var2675=([java.util.Properties], java.util.Hashtable), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2441=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2686=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.PropertiesfileCache, var2039=r1, var2441=java.lang.Object, var469=$r0, var3830=java.io.File, var276=$r2, var1674=java.util.Properties, var2052=$r3, var2675=java.util.Hashtable, var3311=$i0, var3209=$r4, var19=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.PropertiesfileCache=var2686, r1=var2039, java.lang.Object=var2441, $r0=var469, java.io.File=var3830, $r2=var276, java.util.Properties=var1674, $r3=var2052, java.util.Hashtable=var2675, $i0=var3311, $r4=var3209, $r5=var19}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.PropertiesfileCache;	$r0 = newarray (java.lang.Object)[2];	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.PropertiesfileCache: java.io.File cachefile>;	$r0[0] = $r2;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.PropertiesfileCache: java.util.Properties cache>;	$i0 = virtualinvoke $r3.<java.util.Properties: int size()>();	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r0[1] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("<PropertiesfileCache:cachefile=%s;noOfEntries=%d>", $r0);	return $r5
;block_num 1