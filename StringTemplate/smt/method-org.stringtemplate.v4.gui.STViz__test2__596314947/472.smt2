(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var279 0)
(declare-sort var3598 0)
(declare-sort var979 0)
(declare-sort var1251 0)
(declare-sort var3725 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var279_getProperty/258823597 (String) String)
(declare-fun var3598_writeFile/-524223603 (String String String) void)
(declare-fun var979-init () var979)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-722819023 (var979 String) void)
(declare-fun getInstanceOf/202174775 (var3725 String) var1251)
(declare-fun cast-from-var979-to-var3725 (var979) var3725)
(declare-fun inspect/1425387559 (var1251) var3598)
(define-const var2555 String (var279_getProperty/258823597 "java.io.tmpdir")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.io.tmpdir") 
;(assert (var3598_writeFile/-524223603 var2555 "t.stg" "t1(q1=\u0022Some\u005cnText\u0022) ::= <<\n<q1>\n>>\n\nt2(p1) ::= <<\n<p1>\n>>\n\nmain() ::= <<\nSTART-<t1()>-END\n\nSTART-<t2(p1=\u0022Some\u005cnText\u0022)>-END\n>>\n")) ; Statement: staticinvoke <org.stringtemplate.v4.gui.STViz: void writeFile(java.lang.String,java.lang.String,java.lang.String)>(r0, "t.stg", "t1(q1=\"Some\\nText\") ::= <<\n<q1>\n>>\n\nt2(p1) ::= <<\n<p1>\n>>\n\nmain() ::= <<\nSTART-<t1()>-END\n\nSTART-<t2(p1=\"Some\\nText\")>-END\n>>\n") 

(declare-const var2555!1 String)
(declare-const var2572 String)
(declare-const var2293 String)
(define-const var3397 var979 var979-init) ; Statement: $r1 = new org.stringtemplate.v4.STGroupFile 
(define-const var3102 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3102)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3102!1 String)
(assert (= var3102!1 ""))
(assert true)
(define-const var3200 String (append/672562846 var3102!1 var2555!1)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3102!2 String)
(assert (= var3102!2 (str.++ var3102!1 var2555!1)))
(assert true)
(define-const var2925 String (append/672562846 var3200 "/t.stg")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/t.stg") 
(declare-const var3200!1 String)
(assert (= var3200!1 (str.++ var3200 "/t.stg")))
(assert true)
(define-const var2874 String (toString/-2075883882 var2925)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-722819023 var3397 var2874)) ; Statement: specialinvoke $r1.<org.stringtemplate.v4.STGroupFile: void <init>(java.lang.String)>($r5) 

(declare-const var3397!1 var979)
(declare-const var2874!1 String)
(assert true)
(define-const var1500 var1251 (getInstanceOf/202174775 (cast-from-var979-to-var3725 var3397!1) "main")) ; Statement: r6 = virtualinvoke $r1.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.ST getInstanceOf(java.lang.String)>("main") 
(assert true)
;(assert (inspect/1425387559 var1500)) ; Statement: virtualinvoke r6.<org.stringtemplate.v4.ST: org.stringtemplate.v4.gui.STViz inspect()>() 

(declare-const var1500!1 var1251)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var279_getProperty/258823597=([java.lang.String], java.lang.String), var3598_writeFile/-524223603=([java.lang.String, java.lang.String, java.lang.String], void), var979-init=([], org.stringtemplate.v4.STGroupFile), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-722819023=([org.stringtemplate.v4.STGroupFile, java.lang.String], void), getInstanceOf/202174775=([org.stringtemplate.v4.STGroup, java.lang.String], org.stringtemplate.v4.ST), cast-from-var979-to-var3725=([org.stringtemplate.v4.STGroupFile], org.stringtemplate.v4.STGroup), inspect/1425387559=([org.stringtemplate.v4.ST], org.stringtemplate.v4.gui.STViz)}
; {var279=java.lang.System, var2555=r0, var3598=org.stringtemplate.v4.gui.STViz, var2572="t.stg", var2293="t1(q1=\"Some\\nText\") ::= <<\n<q1>\n>>\n\nt2(p1) ::= <<\n<p1>\n>>\n\nmain() ::= <<\nSTART-<t1()>-END\n\nSTART-<t2(p1=\"Some\\nText\")>-END\n>>\n", var979=org.stringtemplate.v4.STGroupFile, var3397=$r1, var3102=$r2, var3200=$r3, var2925=$r4, var2874=$r5, var1251=org.stringtemplate.v4.ST, var3725=org.stringtemplate.v4.STGroup, var1500=r6}
; {java.lang.System=var279, r0=var2555, org.stringtemplate.v4.gui.STViz=var3598, "t.stg"=var2572, "t1(q1=\"Some\\nText\") ::= <<\n<q1>\n>>\n\nt2(p1) ::= <<\n<p1>\n>>\n\nmain() ::= <<\nSTART-<t1()>-END\n\nSTART-<t2(p1=\"Some\\nText\")>-END\n>>\n"=var2293, org.stringtemplate.v4.STGroupFile=var979, $r1=var3397, $r2=var3102, $r3=var3200, $r4=var2925, $r5=var2874, org.stringtemplate.v4.ST=var1251, org.stringtemplate.v4.STGroup=var3725, r6=var1500}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.io.tmpdir");	staticinvoke <org.stringtemplate.v4.gui.STViz: void writeFile(java.lang.String,java.lang.String,java.lang.String)>(r0, "t.stg", "t1(q1=\"Some\\nText\") ::= <<\n<q1>\n>>\n\nt2(p1) ::= <<\n<p1>\n>>\n\nmain() ::= <<\nSTART-<t1()>-END\n\nSTART-<t2(p1=\"Some\\nText\")>-END\n>>\n");	$r1 = new org.stringtemplate.v4.STGroupFile;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/t.stg");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<org.stringtemplate.v4.STGroupFile: void <init>(java.lang.String)>($r5);	r6 = virtualinvoke $r1.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.ST getInstanceOf(java.lang.String)>("main");	virtualinvoke r6.<org.stringtemplate.v4.ST: org.stringtemplate.v4.gui.STViz inspect()>();	return
;block_num 1