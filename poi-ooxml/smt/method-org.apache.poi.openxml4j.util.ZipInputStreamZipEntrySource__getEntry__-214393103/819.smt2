(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2001 0)
(declare-sort var2030 0)
(declare-sort var3322 0)
(declare-sort var63 0)
(declare-sort var1444 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun zipEntries/1996689436 (var2001) var3322)
(declare-fun var3322_get/1088891777 (var3322 var63) var63)
(declare-fun cast-from-String-to-var63 (String) var63)
(declare-fun cast-from-var63-to-var1444 (var63) var1444)
(declare-const null-var2001 var2001)
(declare-const null-String String)
(declare-const null-var1444 var1444)
(declare-const var2360 var2001) ; Statement: r2 := @this: org.apache.poi.openxml4j.util.ZipInputStreamZipEntrySource 
(assert (not (= var2360 null-var2001)))
(declare-const var802 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var802 null-String)))
(assert true)
(define-const var3217 String (replace/1524665721 var802 92 47)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(92, 47) 
(define-const var1677 var3322 (zipEntries/1996689436 var2360)) ; Statement: $r3 = r2.<org.apache.poi.openxml4j.util.ZipInputStreamZipEntrySource: java.util.Map zipEntries> 
(define-const var2294 var63 (var3322_get/1088891777 var1677 (cast-from-String-to-var63 var3217))) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2854 var1444 (cast-from-var63-to-var1444 var2294)) ; Statement: r5 = (org.apache.commons.compress.archivers.zip.ZipArchiveEntry) $r4 
 ; Statement: if r5 == null goto $r6 = r2.<org.apache.poi.openxml4j.util.ZipInputStreamZipEntrySource: java.util.Map zipEntries> 
(assert (not (= var2854 null-var1444))) ; Negate: Cond: r5 == null  
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String), zipEntries/1996689436=([org.apache.poi.openxml4j.util.ZipInputStreamZipEntrySource], java.util.Map), var3322_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var63=([java.lang.String], java.lang.Object), cast-from-var63-to-var1444=([java.lang.Object], org.apache.commons.compress.archivers.zip.ZipArchiveEntry)}
; {var2001=org.apache.poi.openxml4j.util.ZipInputStreamZipEntrySource, var2360=r2, var802=r0, var2030=null_type, var3217=r1, var3322=java.util.Map, var1677=$r3, var63=java.lang.Object, var2294=$r4, var1444=org.apache.commons.compress.archivers.zip.ZipArchiveEntry, var2854=r5}
; {org.apache.poi.openxml4j.util.ZipInputStreamZipEntrySource=var2001, r2=var2360, r0=var802, null_type=var2030, r1=var3217, java.util.Map=var3322, $r3=var1677, java.lang.Object=var63, $r4=var2294, org.apache.commons.compress.archivers.zip.ZipArchiveEntry=var1444, r5=var2854}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r2 := @this: org.apache.poi.openxml4j.util.ZipInputStreamZipEntrySource;	r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(92, 47);	$r3 = r2.<org.apache.poi.openxml4j.util.ZipInputStreamZipEntrySource: java.util.Map zipEntries>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r5 = (org.apache.commons.compress.archivers.zip.ZipArchiveEntry) $r4;	if r5 == null goto $r6 = r2.<org.apache.poi.openxml4j.util.ZipInputStreamZipEntrySource: java.util.Map zipEntries>;	return r5
;block_num 2