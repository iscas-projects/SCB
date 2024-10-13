(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var848 0)
(declare-sort var3903 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-fun indexOfAny/-1390231038 (var848 String String) Int)
(declare-const null-var848 var848)
(declare-const null-String String)
(declare-const var2532 var848) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair 
(assert (not (= var2532 null-var848)))
(declare-const var252 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var252 null-String)))
(assert true)
(define-const var3932 String (replaceAll/1692887130 var252 "\u005c\u005c\u005c\u005c" "__")) ; Statement: r2 = virtualinvoke r1.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\\\\\\\", "__") 
(assert (= (replaceAll/1692887130 var252 "\u005c\u005c\u005c\u005c" "__") (str.replace_re_all var252 (str.to_re "\u{005c}\u{005c}") "__")))
(assert true)
(define-const var858 String (replaceAll/1692887130 var3932 "\u005c\u005c=" "__")) ; Statement: r3 = virtualinvoke r2.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\\\=", "__") 
(assert (= (replaceAll/1692887130 var3932 "\u005c\u005c=" "__") (str.replace_re_all var3932 (str.to_re "\u{005c}=") "__")))
(assert true)
(define-const var229 String (replaceAll/1692887130 var858 "\u005c\u005c:" "__")) ; Statement: r4 = virtualinvoke r3.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\\\:", "__") 
(assert (= (replaceAll/1692887130 var858 "\u005c\u005c:" "__") (str.replace_re_all var858 (str.to_re "\u{005c}:") "__")))
(assert true)
(define-const var1711 String (replaceAll/1692887130 var229 "\u005c\u005c " "__")) ; Statement: r5 = virtualinvoke r4.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\\\ ", "__") 
(assert (= (replaceAll/1692887130 var229 "\u005c\u005c " "__") (str.replace_re_all var229 (str.to_re "\u{005c} ") "__")))
(assert true)
(define-const var2989 String (replaceAll/1692887130 var1711 "\u005c\u005ct" "__")) ; Statement: r6 = virtualinvoke r5.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\\\t", "__") 
(assert (= (replaceAll/1692887130 var1711 "\u005c\u005ct" "__") (str.replace_re_all var1711 (str.to_re "\u{005c}t") "__")))
(assert true)
(define-const var1318 Int (indexOfAny/-1390231038 var2532 var2989 " :=\t")) ; Statement: $i0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair: int indexOfAny(java.lang.String,java.lang.String)>(r6, " :=\t") 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), indexOfAny/-1390231038=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair, java.lang.String, java.lang.String], int)}
; {var848=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair, var2532=r0, var252=r1, var3903=null_type, var3932=r2, var858=r3, var229=r4, var1711=r5, var2989=r6, var1318=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair=var848, r0=var2532, r1=var252, null_type=var3903, r2=var3932, r3=var858, r4=var229, r5=var1711, r6=var2989, $i0=var1318}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair;	r1 := @parameter0: java.lang.String;	r2 = virtualinvoke r1.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\\\\\\\", "__");	r3 = virtualinvoke r2.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\\\=", "__");	r4 = virtualinvoke r3.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\\\:", "__");	r5 = virtualinvoke r4.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\\\ ", "__");	r6 = virtualinvoke r5.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\\\t", "__");	$i0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair: int indexOfAny(java.lang.String,java.lang.String)>(r6, " :=\t");	return $i0
;block_num 1