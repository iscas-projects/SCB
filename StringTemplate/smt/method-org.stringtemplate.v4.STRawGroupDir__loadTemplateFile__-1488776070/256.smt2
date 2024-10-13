(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2710 0)
(declare-sort var2441 0)
(declare-sort var2665 0)
(declare-sort var97 0)
(declare-sort var2069 0)
(declare-sort var149 0)
(declare-sort var1853 0)
(declare-sort var599 0)
(declare-sort var1689 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2665_size/-219293134 (var2665) Int)
(declare-fun var2665_substring/-610710194 (var2665 Int Int) String)
(declare-fun var97_getFileNameNoSuffix/-1011409299 (String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2069-init () var2069)
(declare-fun <init>/-412506063 (var2069 var149) void)
(declare-fun cast-from-var2710-to-var149 (var2710) var149)
(declare-fun compile/-1839891595 (var2069 String String) var1853)
(declare-fun var599-init () var599)
(declare-fun <init>/-1151614557 (var599 Int) void)
(declare-fun setInputStream/762425015 (var599 var2665) void)
(declare-fun cast-from-var599-to-var1689 (var599) var1689)
(declare-fun rawDefineTemplate/-1241445942 (var149 String var1853 var1689) void)
(declare-fun defineImplicitlyDefinedTemplates/-26754263 (var1853 var149) void)
(declare-const null-var2710 var2710)
(declare-const null-String String)
(declare-const null-var2665 var2665)
(declare-const var1596 var2710) ; Statement: r10 := @this: org.stringtemplate.v4.STRawGroupDir 
(assert (not (= var1596 null-var2710)))
(declare-const var3659 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3659 null-String)))
(declare-const var1667 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1667 null-String)))
(declare-const var3442 var2665) ; Statement: r0 := @parameter2: org.antlr.runtime.CharStream 
(assert (not (= var3442 null-var2665)))
(define-const var3179 Int (var2665_size/-219293134 var3442)) ; Statement: $i0 = interfaceinvoke r0.<org.antlr.runtime.CharStream: int size()>() 
(define-const var2810 Int (- var3179 1)) ; Statement: $i1 = $i0 - 1 
(define-const var379 String (var2665_substring/-610710194 var3442 0 var2810)) ; Statement: r1 = interfaceinvoke r0.<org.antlr.runtime.CharStream: java.lang.String substring(int,int)>(0, $i1) 
(define-const var2174 String (var97_getFileNameNoSuffix/-1011409299 var1667)) ; Statement: r3 = staticinvoke <org.stringtemplate.v4.misc.Misc: java.lang.String getFileNameNoSuffix(java.lang.String)>(r2) 
(define-const var2505 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2505)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2505!1 String)
(assert (= var2505!1 ""))
(assert true)
(define-const var1023 String (append/672562846 var2505!1 var3659)) ; Statement: $r6 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2505!2 String)
(assert (= var2505!2 (str.++ var2505!1 var3659)))
(assert true)
(define-const var656 String (append/672562846 var1023 var2174)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1023!1 String)
(assert (= var1023!1 (str.++ var1023 var2174)))
(assert true)
(define-const var1946 String (toString/-2075883882 var656)) ; Statement: r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3335 var2069 var2069-init) ; Statement: $r14 = new org.stringtemplate.v4.compiler.Compiler 
(assert true)
;(assert (<init>/-412506063 var3335 (cast-from-var2710-to-var149 var1596))) ; Statement: specialinvoke $r14.<org.stringtemplate.v4.compiler.Compiler: void <init>(org.stringtemplate.v4.STGroup)>(r10) 

(declare-const var3335!1 var2069)
(declare-const var1596!1 var2710)
(assert true)
(define-const var1719 var1853 (compile/-1839891595 var3335!1 var1946 var379)) ; Statement: r11 = virtualinvoke $r14.<org.stringtemplate.v4.compiler.Compiler: org.stringtemplate.v4.compiler.CompiledST compile(java.lang.String,java.lang.String)>(r8, r1) 
(define-const var2241 var599 var599-init) ; Statement: $r15 = new org.antlr.runtime.CommonToken 
(assert true)
;(assert (<init>/-1151614557 var2241 9)) ; Statement: specialinvoke $r15.<org.antlr.runtime.CommonToken: void <init>(int)>(9) 

(declare-const var2241!1 var599)
(declare-const var2003 Int)
(assert true)
;(assert (setInputStream/762425015 var2241!1 var3442)) ; Statement: virtualinvoke $r15.<org.antlr.runtime.CommonToken: void setInputStream(org.antlr.runtime.CharStream)>(r0) 

(declare-const var2241!2 var599)
(declare-const var3442!1 var2665)
(define-const var560 var1689 (cast-from-var599-to-var1689 var2241!2)) ; Statement: $r16 = (org.antlr.runtime.Token) $r15 
(assert true)
;(assert (rawDefineTemplate/-1241445942 (cast-from-var2710-to-var149 var1596!1) var1946 var1719 var560)) ; Statement: virtualinvoke r10.<org.stringtemplate.v4.STRawGroupDir: void rawDefineTemplate(java.lang.String,org.stringtemplate.v4.compiler.CompiledST,org.antlr.runtime.Token)>(r8, r11, $r16) 

(declare-const var1596!2 var2710)
(declare-const var1946!1 String)
(declare-const var1719!1 var1853)
(declare-const var560!1 var1689)
(assert true)
;(assert (defineImplicitlyDefinedTemplates/-26754263 var1719!1 (cast-from-var2710-to-var149 var1596!2))) ; Statement: virtualinvoke r11.<org.stringtemplate.v4.compiler.CompiledST: void defineImplicitlyDefinedTemplates(org.stringtemplate.v4.STGroup)>(r10) 

(declare-const var1719!2 var1853)
(declare-const var1596!3 var2710)
 ; Statement: return r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var2665_size/-219293134=([org.antlr.runtime.CharStream], int), var2665_substring/-610710194=([org.antlr.runtime.CharStream, int, int], java.lang.String), var97_getFileNameNoSuffix/-1011409299=([java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2069-init=([], org.stringtemplate.v4.compiler.Compiler), <init>/-412506063=([org.stringtemplate.v4.compiler.Compiler, org.stringtemplate.v4.STGroup], void), cast-from-var2710-to-var149=([org.stringtemplate.v4.STRawGroupDir], org.stringtemplate.v4.STGroup), compile/-1839891595=([org.stringtemplate.v4.compiler.Compiler, java.lang.String, java.lang.String], org.stringtemplate.v4.compiler.CompiledST), var599-init=([], org.antlr.runtime.CommonToken), <init>/-1151614557=([org.antlr.runtime.CommonToken, int], void), setInputStream/762425015=([org.antlr.runtime.CommonToken, org.antlr.runtime.CharStream], void), cast-from-var599-to-var1689=([org.antlr.runtime.CommonToken], org.antlr.runtime.Token), rawDefineTemplate/-1241445942=([org.stringtemplate.v4.STGroup, java.lang.String, org.stringtemplate.v4.compiler.CompiledST, org.antlr.runtime.Token], void), defineImplicitlyDefinedTemplates/-26754263=([org.stringtemplate.v4.compiler.CompiledST, org.stringtemplate.v4.STGroup], void)}
; {var2710=org.stringtemplate.v4.STRawGroupDir, var1596=r10, var3659=r5, var2441=null_type, var1667=r2, var2665=org.antlr.runtime.CharStream, var3442=r0, var3179=$i0, var2810=$i1, var379=r1, var97=org.stringtemplate.v4.misc.Misc, var2174=r3, var2505=$r13, var1023=$r6, var656=$r7, var1946=r8, var2069=org.stringtemplate.v4.compiler.Compiler, var3335=$r14, var149=org.stringtemplate.v4.STGroup, var1853=org.stringtemplate.v4.compiler.CompiledST, var1719=r11, var599=org.antlr.runtime.CommonToken, var2241=$r15, var2003=9, var1689=org.antlr.runtime.Token, var560=$r16}
; {org.stringtemplate.v4.STRawGroupDir=var2710, r10=var1596, r5=var3659, null_type=var2441, r2=var1667, org.antlr.runtime.CharStream=var2665, r0=var3442, $i0=var3179, $i1=var2810, r1=var379, org.stringtemplate.v4.misc.Misc=var97, r3=var2174, $r13=var2505, $r6=var1023, $r7=var656, r8=var1946, org.stringtemplate.v4.compiler.Compiler=var2069, $r14=var3335, org.stringtemplate.v4.STGroup=var149, org.stringtemplate.v4.compiler.CompiledST=var1853, r11=var1719, org.antlr.runtime.CommonToken=var599, $r15=var2241, 9=var2003, org.antlr.runtime.Token=var1689, $r16=var560}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.stringtemplate.v4.STRawGroupDir;	r5 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r0 := @parameter2: org.antlr.runtime.CharStream;	$i0 = interfaceinvoke r0.<org.antlr.runtime.CharStream: int size()>();	$i1 = $i0 - 1;	r1 = interfaceinvoke r0.<org.antlr.runtime.CharStream: java.lang.String substring(int,int)>(0, $i1);	r3 = staticinvoke <org.stringtemplate.v4.misc.Misc: java.lang.String getFileNameNoSuffix(java.lang.String)>(r2);	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = new org.stringtemplate.v4.compiler.Compiler;	specialinvoke $r14.<org.stringtemplate.v4.compiler.Compiler: void <init>(org.stringtemplate.v4.STGroup)>(r10);	r11 = virtualinvoke $r14.<org.stringtemplate.v4.compiler.Compiler: org.stringtemplate.v4.compiler.CompiledST compile(java.lang.String,java.lang.String)>(r8, r1);	$r15 = new org.antlr.runtime.CommonToken;	specialinvoke $r15.<org.antlr.runtime.CommonToken: void <init>(int)>(9);	virtualinvoke $r15.<org.antlr.runtime.CommonToken: void setInputStream(org.antlr.runtime.CharStream)>(r0);	$r16 = (org.antlr.runtime.Token) $r15;	virtualinvoke r10.<org.stringtemplate.v4.STRawGroupDir: void rawDefineTemplate(java.lang.String,org.stringtemplate.v4.compiler.CompiledST,org.antlr.runtime.Token)>(r8, r11, $r16);	virtualinvoke r11.<org.stringtemplate.v4.compiler.CompiledST: void defineImplicitlyDefinedTemplates(org.stringtemplate.v4.STGroup)>(r10);	return r11
;block_num 1