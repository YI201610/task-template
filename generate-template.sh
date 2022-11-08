#!/bin/sh

if [ $# -ne 1 ]; then
    echo "usage: ./generate-template.sh <issue_name>"
    exit
fi

# 注意: =と引数の間にスペースを入れないこと
export itemName=$1
export testCaseInstallPath=testSpecs/

mkdir ${itemName}
cd ${itemName}

touch ${itemName}_DISCIPLINE.md
{
    echo "#" ${itemName} 
	  echo " "
	  echo "## 方向付け（モデリング, 顧客との対話）"
	  echo " "
	  echo "- 分析(※Android動作確認も必須): 7.14 %"
	echo "- 設計: 14.28 %"
	echo "- 実装+単体試験: 21.42 %"
	echo "- ログ要件対応設計: 26.0 %"
	echo "- （チケット起票）: 27.0 %"
	echo " "
	echo "## 推敲 （モデリング, 顧客との対話）"
	echo " "
	echo "- 分析(※Android動作確認も必須): 28.56 %"
	echo "- 設計: 35.7 %"
	echo "- 実装+単体試験: 42.84 %"
	echo "- デザインレビュー(UI関連案件では必ず実行する): 49.98 %"
	echo "- 試験項目作成: 57.12 %"
	echo "- ログ要件実装: 60.0 %"
	echo " "
	echo "## 組み立て"
	echo " "
	echo "- 実装+単体試験: 64.26 %"
	echo "- コードレビュー: 71.4 %"
	echo "- 最終デザインレビュー: 78.54 %"
	echo "- 試験実施: 85.68 %"
	echo " "
	echo "## 移行"
	echo " "
	echo "- featureマージ: 92.82 %"
	echo "- 配置: 99.96 %"

} > ${itemName}_DISCIPLINE.md

touch ${itemName}_PPDAC.md
{
    echo "#" ${itemName}
	  echo " "
	  echo "## Problem（身近な課題の明確化）"
	  echo " "
	  echo "## Plan (調査・実験研究のデザイン)"
	  echo " "
	  echo "## Data (データの収集とデータの加工)"
	  echo " "
	  echo "## Analysis (データの分析、パターンの発見、要因が目的にどういう影響を与えているかを分析する)"
	  echo " "
	  echo "## Conclusion (最初の課題に対する結論付けと、新たな課題の提示)"
	  echo " "

} > ${itemName}_PPDAC.md

touch ${itemName}_MEMO.md 

mkdir download
mkdir docs
mkdir error-logs
mkdir logs
mkdir ipa
mkdir testSpecs

echo "[✓] directory: ${itemName} created."

touch ${itemName}_TestCase.md 
mv ${itemName}_TestCase.md ${testCaseInstallPath}

echo "[✓] Test case: ${testCaseInstallPath} installed."

exit

