(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1621 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFile/10099890 (var1621) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun replaceFirst/750800361 (String String String) String)
(declare-fun var1621-init () var1621)
(declare-fun getHost/1963793670 (var1621) String)
(declare-fun getPort/-2026873749 (var1621) Int)
(declare-fun <init>/1884135189 (var1621 String String Int String) void)
(declare-const null-var1621 var1621)
(declare-const var1404 var1621) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var1404 null-var1621)))
(assert true)
(define-const var3042 String (getFile/10099890 var1404)) ; Statement: r4 = virtualinvoke r0.<java.net.URL: java.lang.String getFile()>() 
(assert true)
(define-const var3047 Bool (contains/1009244746 var3042 (cast-from-String-to-String "*/"))) ; Statement: $z0 = virtualinvoke r4.<java.lang.String: boolean contains(java.lang.CharSequence)>("*/") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r4.<java.lang.String: boolean contains(java.lang.CharSequence)>("^/") 
(assert (not (= (ite var3047 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3042!1 String (replaceFirst/750800361 var3042 "\u005c*/" "!/")) ; Statement: r4 = virtualinvoke r4.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("\\*/", "!/") 
(assert (= (replaceFirst/750800361 var3042 "\u005c*/" "!/") (str.replace_re var3042 (str.to_re "*/") "!/")))
 ; Statement: goto [?= $r5 = new java.net.URL] 
(assert true) ; Non Conditional
(define-const var786 var1621 var1621-init) ; Statement: $r5 = new java.net.URL 
(assert true)
(define-const var516 String (getHost/1963793670 var1404)) ; Statement: $r6 = virtualinvoke r0.<java.net.URL: java.lang.String getHost()>() 
(assert true)
(define-const var1052 Int (getPort/-2026873749 var1404)) ; Statement: $i0 = virtualinvoke r0.<java.net.URL: int getPort()>() 
(assert true)
;(assert (<init>/1884135189 var786 "jar" var516 var1052 var3042!1)) ; Statement: specialinvoke $r5.<java.net.URL: void <init>(java.lang.String,java.lang.String,int,java.lang.String)>("jar", $r6, $i0, r4) 

(declare-const var786!1 var1621)
(declare-const var2636 String)
(declare-const var516!1 String)
(declare-const var1052!1 Int)
(declare-const var3042!2 String)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getFile/10099890=([java.net.URL], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), replaceFirst/750800361=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), var1621-init=([], java.net.URL), getHost/1963793670=([java.net.URL], java.lang.String), getPort/-2026873749=([java.net.URL], int), <init>/1884135189=([java.net.URL, java.lang.String, java.lang.String, int, java.lang.String], void)}
; {var1621=java.net.URL, var1404=r0, var3042=r4, var3047=$z0, var786=$r5, var516=$r6, var1052=$i0, var2636="jar"}
; {java.net.URL=var1621, r0=var1404, r4=var3042, $z0=var3047, $r5=var786, $r6=var516, $i0=var1052, "jar"=var2636}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1,"<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>": 1}
;stmts r0 := @parameter0: java.net.URL;	r4 = virtualinvoke r0.<java.net.URL: java.lang.String getFile()>();	$z0 = virtualinvoke r4.<java.lang.String: boolean contains(java.lang.CharSequence)>("*/");	if $z0 == 0 goto $z1 = virtualinvoke r4.<java.lang.String: boolean contains(java.lang.CharSequence)>("^/");	r4 = virtualinvoke r4.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("\\*/", "!/");	goto [?= $r5 = new java.net.URL];	$r5 = new java.net.URL;	$r6 = virtualinvoke r0.<java.net.URL: java.lang.String getHost()>();	$i0 = virtualinvoke r0.<java.net.URL: int getPort()>();	specialinvoke $r5.<java.net.URL: void <init>(java.lang.String,java.lang.String,int,java.lang.String)>("jar", $r6, $i0, r4);	return $r5
;block_num 3