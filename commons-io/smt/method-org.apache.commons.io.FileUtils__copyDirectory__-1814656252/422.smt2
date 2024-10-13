(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3730 0)
(declare-sort var34 0)
(declare-sort var706 0)
(declare-sort var59 0)
(declare-sort var3556 0)
(declare-sort var1295 0)
(declare-sort var3387 0)
(declare-sort var267 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var59_requireNonNull/1378936425 (var3556 String) var3556)
(declare-fun cast-from-var3730-to-var3556 (var3730) var3556)
(declare-fun var1295_requireDirectoryExists/-1197812669 (var3730 String) void)
(declare-fun var1295_requireCanonicalPathsNotEquals/-1570262331 (var3730 var3730) void)
(declare-fun getCanonicalPath/2030784441 (var3730) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var1295_doCopyDirectory/-1733545097 (var3730 var3730 var34 var267 Bool (Array Int var706)) void)
(declare-fun cast-from-var3387-to-var267 (var3387) var267)
(declare-const null-var3730 var3730)
(declare-const null-var34 var34)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var706__ (Array Int var706))
(declare-const null-var3387 var3387)
(declare-const var1212 var3730) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var1212 null-var3730)))
(declare-const var1423 var3730) ; Statement: r0 := @parameter1: java.io.File 
(assert (not (= var1423 null-var3730)))
(declare-const var466 var34) ; Statement: r4 := @parameter2: java.io.FileFilter 
(assert (not (= var466 null-var34)))
(declare-const var0 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var0 null-Bool)))
(declare-const var619 (Array Int var706)) ; Statement: r5 := @parameter4: java.nio.file.CopyOption[] 
(assert (not (= var619 null-__Array__Int__var706__)))
;(assert (var59_requireNonNull/1378936425 (cast-from-var3730-to-var3556 var1423) "destination")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "destination") 

(declare-const var1423!1 var3730)
(declare-const var3177 String)
;(assert (var1295_requireDirectoryExists/-1197812669 var1212 "srcDir")) ; Statement: staticinvoke <org.apache.commons.io.FileUtils: void requireDirectoryExists(java.io.File,java.lang.String)>(r1, "srcDir") 

(declare-const var1212!1 var3730)
(declare-const var1990 String)
;(assert (var1295_requireCanonicalPathsNotEquals/-1570262331 var1212!1 var1423!1)) ; Statement: staticinvoke <org.apache.commons.io.FileUtils: void requireCanonicalPathsNotEquals(java.io.File,java.io.File)>(r1, r0) 

(declare-const var1212!2 var3730)
(declare-const var1423!2 var3730)
(define-const var3091 var3387 null-var3387) ; Statement: r12 = null 
(assert true)
(define-const var2284 String (getCanonicalPath/2030784441 var1212!2)) ; Statement: r2 = virtualinvoke r1.<java.io.File: java.lang.String getCanonicalPath()>() 
(assert true)
(define-const var1765 String (getCanonicalPath/2030784441 var1423!2)) ; Statement: r3 = virtualinvoke r0.<java.io.File: java.lang.String getCanonicalPath()>() 
(assert true)
(define-const var853 Bool (startsWith/-1785782452 var1765 var2284)) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>(r2) 
 ; Statement: if $z0 == 0 goto staticinvoke <org.apache.commons.io.FileUtils: void doCopyDirectory(java.io.File,java.io.File,java.io.FileFilter,java.util.List,boolean,java.nio.file.CopyOption[])>(r1, r0, r4, r12, z1, r5) 
(assert (= (ite var853 1 0) 0)) ; Cond: $z0 == 0 
;(assert (var1295_doCopyDirectory/-1733545097 var1212!2 var1423!2 var466 (cast-from-var3387-to-var267 var3091) var0 var619)) ; Statement: staticinvoke <org.apache.commons.io.FileUtils: void doCopyDirectory(java.io.File,java.io.File,java.io.FileFilter,java.util.List,boolean,java.nio.file.CopyOption[])>(r1, r0, r4, r12, z1, r5) 

(declare-const var1212!3 var3730)
(declare-const var1423!3 var3730)
(declare-const var466!1 var34)
(declare-const var3091!1 var3387)
(declare-const var0!1 Bool)
(declare-const var619!1 (Array Int var706))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var59_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-var3730-to-var3556=([java.io.File], java.lang.Object), var1295_requireDirectoryExists/-1197812669=([java.io.File, java.lang.String], void), var1295_requireCanonicalPathsNotEquals/-1570262331=([java.io.File, java.io.File], void), getCanonicalPath/2030784441=([java.io.File], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var1295_doCopyDirectory/-1733545097=([java.io.File, java.io.File, java.io.FileFilter, java.util.List, boolean, java.nio.file.CopyOption[]], void), cast-from-var3387-to-var267=([java.util.ArrayList], java.util.List)}
; {var3730=java.io.File, var1212=r1, var1423=r0, var34=java.io.FileFilter, var466=r4, var0=z1, var706=java.nio.file.CopyOption, var619=r5, var59=java.util.Objects, var3556=java.lang.Object, var3177="destination", var1295=org.apache.commons.io.FileUtils, var1990="srcDir", var3387=java.util.ArrayList, var3091=r12, var2284=r2, var1765=r3, var853=$z0, var267=java.util.List}
; {java.io.File=var3730, r1=var1212, r0=var1423, java.io.FileFilter=var34, r4=var466, z1=var0, java.nio.file.CopyOption=var706, r5=var619, java.util.Objects=var59, java.lang.Object=var3556, "destination"=var3177, org.apache.commons.io.FileUtils=var1295, "srcDir"=var1990, java.util.ArrayList=var3387, r12=var3091, r2=var2284, r3=var1765, $z0=var853, java.util.List=var267}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.io.File;	r0 := @parameter1: java.io.File;	r4 := @parameter2: java.io.FileFilter;	z1 := @parameter3: boolean;	r5 := @parameter4: java.nio.file.CopyOption[];	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "destination");	staticinvoke <org.apache.commons.io.FileUtils: void requireDirectoryExists(java.io.File,java.lang.String)>(r1, "srcDir");	staticinvoke <org.apache.commons.io.FileUtils: void requireCanonicalPathsNotEquals(java.io.File,java.io.File)>(r1, r0);	r12 = null;	r2 = virtualinvoke r1.<java.io.File: java.lang.String getCanonicalPath()>();	r3 = virtualinvoke r0.<java.io.File: java.lang.String getCanonicalPath()>();	$z0 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>(r2);	if $z0 == 0 goto staticinvoke <org.apache.commons.io.FileUtils: void doCopyDirectory(java.io.File,java.io.File,java.io.FileFilter,java.util.List,boolean,java.nio.file.CopyOption[])>(r1, r0, r4, r12, z1, r5);	staticinvoke <org.apache.commons.io.FileUtils: void doCopyDirectory(java.io.File,java.io.File,java.io.FileFilter,java.util.List,boolean,java.nio.file.CopyOption[])>(r1, r0, r4, r12, z1, r5);	return
;block_num 2