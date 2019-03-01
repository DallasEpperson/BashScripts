myBranchContains() {
    git merge-base --is-ancestor $1 HEAD;
    NOTCONTAINED=$?;
    if [[ $NOTCONTAINED = 0 ]]; then echo "true"; else echo "false"; fi
}