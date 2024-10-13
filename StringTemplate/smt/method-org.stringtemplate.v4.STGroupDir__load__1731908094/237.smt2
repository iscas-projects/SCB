(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1513 0)
(declare-sort var2349 0)
(declare-sort var2036 0)
(declare-sort var288 0)
(declare-sort var79 0)
(declare-sort var3950 0)
(declare-sort var321 0)
(declare-sort var405 0)
(declare-sort var1672 0)
(declare-sort var1995 0)
(declare-sort var1880 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2036_getParent/12655324 (String) String)
(declare-fun var2036_getPrefix/-563669004 (String) String)
(declare-fun var288-init () var288)
(declare-fun String-init () String)
(declare-fun errMgr/787585255 (var321) var3950)
(declare-fun cast-from-var1513-to-var321 (var1513) var321)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun root/-453937626 (var1513) var405)
(declare-fun append/-1031950772 (String var1672) String)
(declare-fun cast-from-var405-to-var1672 (var405) var1672)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun internalError/414735935 (var3950 var1995 String var1880) void)
(declare-fun cast-from-var79-to-var1880 (var79) var1880)
(declare-const null-var1513 var1513)
(declare-const null-String String)
(declare-const var1513-verbose Bool)
(declare-const null-var79 var79)
(declare-const var1513-GROUP_FILE_EXTENSION String)
(declare-const null-NullType var2349)
(declare-const null-var1995 var1995)
(declare-const var3511 var1513) ; Statement: r3 := @this: org.stringtemplate.v4.STGroupDir 
(assert (not (= var3511 null-var1513)))
(declare-const var3350 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3350 null-String)))
(define-const var3550 Bool var1513-verbose) ; Statement: $z0 = <org.stringtemplate.v4.STGroupDir: boolean verbose> 
 ; Statement: if $z0 == 0 goto $r25 = staticinvoke <org.stringtemplate.v4.misc.Misc: java.lang.String getParent(java.lang.String)>(r0) 
(assert (= (ite var3550 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2461 String (var2036_getParent/12655324 var3350)) ; Statement: $r25 = staticinvoke <org.stringtemplate.v4.misc.Misc: java.lang.String getParent(java.lang.String)>(r0) 
(define-const var2420 String (var2036_getPrefix/-563669004 var3350)) ; Statement: $r26 = staticinvoke <org.stringtemplate.v4.misc.Misc: java.lang.String getPrefix(java.lang.String)>(r0) 
(define-const var3371 var288 var288-init) ; Statement: $r1 = new java.net.URI 
(define-const var3845 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3958 var79) ; Statement: $r55 := @caughtexception 
(assert (not (= var3958 null-var79)))
(define-const var2370 var3950 (errMgr/787585255 (cast-from-var1513-to-var321 var3511))) ; Statement: $r57 = r3.<org.stringtemplate.v4.STGroupDir: org.stringtemplate.v4.misc.ErrorManager errMgr> 
(define-const var2949 String String-init) ; Statement: $r56 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2949)) ; Statement: specialinvoke $r56.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2949!1 String)
(assert (= var2949!1 ""))
(assert true)
(define-const var3363 String (append/672562846 var2949!1 "bad URL: ")) ; Statement: $r59 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad URL: ") 
(declare-const var2949!2 String)
(assert (= var2949!2 (str.++ var2949!1 "bad URL: ")))
(define-const var668 var405 (root/-453937626 var3511)) ; Statement: $r58 = r3.<org.stringtemplate.v4.STGroupDir: java.net.URL root> 
(assert true)
(define-const var982 String (append/-1031950772 var3363 (cast-from-var405-to-var1672 var668))) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r58) 
(declare-const var3363!1 String)
(assert (str.prefixof var3363 var3363!1))
(assert true)
(define-const var16 String (append/672562846 var982 var2461)) ; Statement: $r62 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var982!1 String)
(assert (= var982!1 (str.++ var982 var2461)))
(define-const var2944 String var1513-GROUP_FILE_EXTENSION) ; Statement: $r61 = <org.stringtemplate.v4.STGroupDir: java.lang.String GROUP_FILE_EXTENSION> 
(assert true)
(define-const var2365 String (append/672562846 var16 var2944)) ; Statement: $r63 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r61) 
(declare-const var16!1 String)
(assert (= var16!1 (str.++ var16 var2944)))
(assert true)
(define-const var1929 String (toString/-2075883882 var2365)) ; Statement: $r64 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (internalError/414735935 var2370 null-var1995 var1929 (cast-from-var79-to-var1880 var3958))) ; Statement: virtualinvoke $r57.<org.stringtemplate.v4.misc.ErrorManager: void internalError(org.stringtemplate.v4.ST,java.lang.String,java.lang.Throwable)>(null, $r64, $r55) 

(declare-const var2370!1 var3950)
(declare-const var669 var2349)
(declare-const var1929!1 String)
(declare-const var3958!1 var79)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var2036_getParent/12655324=([java.lang.String], java.lang.String), var2036_getPrefix/-563669004=([java.lang.String], java.lang.String), var288-init=([], java.net.URI), String-init=([], java.lang.StringBuilder), errMgr/787585255=([org.stringtemplate.v4.STGroup], org.stringtemplate.v4.misc.ErrorManager), cast-from-var1513-to-var321=([org.stringtemplate.v4.STGroupDir], org.stringtemplate.v4.STGroup), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), root/-453937626=([org.stringtemplate.v4.STGroupDir], java.net.URL), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var405-to-var1672=([java.net.URL], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), internalError/414735935=([org.stringtemplate.v4.misc.ErrorManager, org.stringtemplate.v4.ST, java.lang.String, java.lang.Throwable], void), cast-from-var79-to-var1880=([java.lang.Exception], java.lang.Throwable)}
; {var1513=org.stringtemplate.v4.STGroupDir, var3511=r3, var3350=r0, var2349=null_type, var3550=$z0, var2036=org.stringtemplate.v4.misc.Misc, var2461=$r25, var2420=$r26, var288=java.net.URI, var3371=$r1, var3845=$r2, var79=java.lang.Exception, var3958=$r55, var3950=org.stringtemplate.v4.misc.ErrorManager, var321=org.stringtemplate.v4.STGroup, var2370=$r57, var2949=$r56, var3363=$r59, var405=java.net.URL, var668=$r58, var1672=java.lang.Object, var982=$r60, var16=$r62, var2944=$r61, var2365=$r63, var1929=$r64, var1995=org.stringtemplate.v4.ST, var1880=java.lang.Throwable, var669=null}
; {org.stringtemplate.v4.STGroupDir=var1513, r3=var3511, r0=var3350, null_type=var2349, $z0=var3550, org.stringtemplate.v4.misc.Misc=var2036, $r25=var2461, $r26=var2420, java.net.URI=var288, $r1=var3371, $r2=var3845, java.lang.Exception=var79, $r55=var3958, org.stringtemplate.v4.misc.ErrorManager=var3950, org.stringtemplate.v4.STGroup=var321, $r57=var2370, $r56=var2949, $r59=var3363, java.net.URL=var405, $r58=var668, java.lang.Object=var1672, $r60=var982, $r62=var16, $r61=var2944, $r63=var2365, $r64=var1929, org.stringtemplate.v4.ST=var1995, java.lang.Throwable=var1880, null=var669}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.stringtemplate.v4.STGroupDir;	r0 := @parameter0: java.lang.String;	$z0 = <org.stringtemplate.v4.STGroupDir: boolean verbose>;	if $z0 == 0 goto $r25 = staticinvoke <org.stringtemplate.v4.misc.Misc: java.lang.String getParent(java.lang.String)>(r0);	$r25 = staticinvoke <org.stringtemplate.v4.misc.Misc: java.lang.String getParent(java.lang.String)>(r0);	$r26 = staticinvoke <org.stringtemplate.v4.misc.Misc: java.lang.String getPrefix(java.lang.String)>(r0);	$r1 = new java.net.URI;	$r2 = new java.lang.StringBuilder;	$r55 := @caughtexception;	$r57 = r3.<org.stringtemplate.v4.STGroupDir: org.stringtemplate.v4.misc.ErrorManager errMgr>;	$r56 = new java.lang.StringBuilder;	specialinvoke $r56.<java.lang.StringBuilder: void <init>()>();	$r59 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad URL: ");	$r58 = r3.<org.stringtemplate.v4.STGroupDir: java.net.URL root>;	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r58);	$r62 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r61 = <org.stringtemplate.v4.STGroupDir: java.lang.String GROUP_FILE_EXTENSION>;	$r63 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r61);	$r64 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r57.<org.stringtemplate.v4.misc.ErrorManager: void internalError(org.stringtemplate.v4.ST,java.lang.String,java.lang.Throwable)>(null, $r64, $r55);	return null
;block_num 3