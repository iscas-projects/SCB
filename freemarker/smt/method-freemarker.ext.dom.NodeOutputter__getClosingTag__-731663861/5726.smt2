(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1290 0)
(declare-sort var3371 0)
(declare-sort var253 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun outputQualifiedName/2043439309 (var1290 var253 String) void)
(declare-fun cast-from-var3371-to-var253 (var3371) var253)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1290 var1290)
(declare-const null-var3371 var3371)
(declare-const var3994 var1290) ; Statement: r1 := @this: freemarker.ext.dom.NodeOutputter 
(assert (not (= var3994 null-var1290)))
(declare-const var2827 var3371) ; Statement: r2 := @parameter0: org.w3c.dom.Element 
(assert (not (= var2827 null-var3371)))
(define-const var2613 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2613)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2613!1 String)
(assert (= var2613!1 ""))
(assert true)
;(assert (append/672562846 var2613!1 "</")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</") 
(declare-const var2613!2 String)
(assert (= var2613!2 (str.++ var2613!1 "</")))
(assert true)
;(assert (outputQualifiedName/2043439309 var3994 (cast-from-var3371-to-var253 var2827) var2613!2)) ; Statement: specialinvoke r1.<freemarker.ext.dom.NodeOutputter: void outputQualifiedName(org.w3c.dom.Node,java.lang.StringBuilder)>(r2, $r0) 

(declare-const var3994!1 var1290)
(declare-const var2827!1 var3371)
(declare-const var2613!3 String)
(assert true)
;(assert (append/-1166366385 var2613!3 62)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var2613!4 String)
(assert (str.prefixof var2613!3 var2613!4))
(assert true)
(define-const var1953 String (toString/-2075883882 var2613!4)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), outputQualifiedName/2043439309=([freemarker.ext.dom.NodeOutputter, org.w3c.dom.Node, java.lang.StringBuilder], void), cast-from-var3371-to-var253=([org.w3c.dom.Element], org.w3c.dom.Node), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1290=freemarker.ext.dom.NodeOutputter, var3994=r1, var3371=org.w3c.dom.Element, var2827=r2, var2613=$r0, var253=org.w3c.dom.Node, var1953=$r3}
; {freemarker.ext.dom.NodeOutputter=var1290, r1=var3994, org.w3c.dom.Element=var3371, r2=var2827, $r0=var2613, org.w3c.dom.Node=var253, $r3=var1953}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.ext.dom.NodeOutputter;	r2 := @parameter0: org.w3c.dom.Element;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</");	specialinvoke r1.<freemarker.ext.dom.NodeOutputter: void outputQualifiedName(org.w3c.dom.Node,java.lang.StringBuilder)>(r2, $r0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1