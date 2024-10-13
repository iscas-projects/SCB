(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3416 0)
(declare-sort var753 0)
(declare-sort var1859 0)
(declare-sort var464 0)
(declare-sort var1610 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3416_getProperty/258823597 (String) String)
(declare-fun var753_writeFile/-524223603 (String String String) void)
(declare-fun var1859-init () var1859)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-722819023 (var1859 String) void)
(declare-fun getInstanceOf/202174775 (var1610 String) var464)
(declare-fun cast-from-var1859-to-var1610 (var1859) var1610)
(declare-fun inspect/1425387559 (var464) var753)
(define-const var1445 String (var3416_getProperty/258823597 "java.io.tmpdir")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.io.tmpdir") 
;(assert (var753_writeFile/-524223603 var1445 "t.stg" "main() ::= <<\nFoo: <{bar};format=\u0022lower\u0022>\n>>\n")) ; Statement: staticinvoke <org.stringtemplate.v4.gui.STViz: void writeFile(java.lang.String,java.lang.String,java.lang.String)>(r0, "t.stg", "main() ::= <<\nFoo: <{bar};format=\"lower\">\n>>\n") 

(declare-const var1445!1 String)
(declare-const var1554 String)
(declare-const var1352 String)
(define-const var3683 var1859 var1859-init) ; Statement: $r1 = new org.stringtemplate.v4.STGroupFile 
(define-const var2230 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2230)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2230!1 String)
(assert (= var2230!1 ""))
(assert true)
(define-const var570 String (append/672562846 var2230!1 var1445!1)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2230!2 String)
(assert (= var2230!2 (str.++ var2230!1 var1445!1)))
(assert true)
(define-const var2672 String (append/672562846 var570 "/t.stg")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/t.stg") 
(declare-const var570!1 String)
(assert (= var570!1 (str.++ var570 "/t.stg")))
(assert true)
(define-const var2610 String (toString/-2075883882 var2672)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-722819023 var3683 var2610)) ; Statement: specialinvoke $r1.<org.stringtemplate.v4.STGroupFile: void <init>(java.lang.String)>($r5) 

(declare-const var3683!1 var1859)
(declare-const var2610!1 String)
(assert true)
(define-const var1499 var464 (getInstanceOf/202174775 (cast-from-var1859-to-var1610 var3683!1) "main")) ; Statement: r6 = virtualinvoke $r1.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.ST getInstanceOf(java.lang.String)>("main") 
(assert true)
;(assert (inspect/1425387559 var1499)) ; Statement: virtualinvoke r6.<org.stringtemplate.v4.ST: org.stringtemplate.v4.gui.STViz inspect()>() 

(declare-const var1499!1 var464)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3416_getProperty/258823597=([java.lang.String], java.lang.String), var753_writeFile/-524223603=([java.lang.String, java.lang.String, java.lang.String], void), var1859-init=([], org.stringtemplate.v4.STGroupFile), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-722819023=([org.stringtemplate.v4.STGroupFile, java.lang.String], void), getInstanceOf/202174775=([org.stringtemplate.v4.STGroup, java.lang.String], org.stringtemplate.v4.ST), cast-from-var1859-to-var1610=([org.stringtemplate.v4.STGroupFile], org.stringtemplate.v4.STGroup), inspect/1425387559=([org.stringtemplate.v4.ST], org.stringtemplate.v4.gui.STViz)}
; {var3416=java.lang.System, var1445=r0, var753=org.stringtemplate.v4.gui.STViz, var1554="t.stg", var1352="main() ::= <<\nFoo: <{bar};format=\"lower\">\n>>\n", var1859=org.stringtemplate.v4.STGroupFile, var3683=$r1, var2230=$r2, var570=$r3, var2672=$r4, var2610=$r5, var464=org.stringtemplate.v4.ST, var1610=org.stringtemplate.v4.STGroup, var1499=r6}
; {java.lang.System=var3416, r0=var1445, org.stringtemplate.v4.gui.STViz=var753, "t.stg"=var1554, "main() ::= <<\nFoo: <{bar};format=\"lower\">\n>>\n"=var1352, org.stringtemplate.v4.STGroupFile=var1859, $r1=var3683, $r2=var2230, $r3=var570, $r4=var2672, $r5=var2610, org.stringtemplate.v4.ST=var464, org.stringtemplate.v4.STGroup=var1610, r6=var1499}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.io.tmpdir");	staticinvoke <org.stringtemplate.v4.gui.STViz: void writeFile(java.lang.String,java.lang.String,java.lang.String)>(r0, "t.stg", "main() ::= <<\nFoo: <{bar};format=\"lower\">\n>>\n");	$r1 = new org.stringtemplate.v4.STGroupFile;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/t.stg");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<org.stringtemplate.v4.STGroupFile: void <init>(java.lang.String)>($r5);	r6 = virtualinvoke $r1.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.ST getInstanceOf(java.lang.String)>("main");	virtualinvoke r6.<org.stringtemplate.v4.ST: org.stringtemplate.v4.gui.STViz inspect()>();	return
;block_num 1