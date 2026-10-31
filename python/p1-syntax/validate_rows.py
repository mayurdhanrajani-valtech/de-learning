rows = [
    {"id": "1", "status": "PENDING", "total": 20},       # VALID
    {"id": "2", "status": "COMPLETED", "total": 0},      # VALID: 0 is not missing
    {"id": "3", "status": "", "total": None},            # both missing -> status wins
    {"id": "4", "status": "IN PROGRESS", "total": 10},   # VALID
    {"id": "5", "status": None, "total": 50},            # MISSING_STATUS (None)
    {"id": "6", "status": " ", "total": None},           # both missing -> status wins
    {"id": "7", "status": "PENDING", "total": None},     # MISSING_TOTAL
    {"id": "8", "status": "", "total": 5},               # MISSING_STATUS (empty)
    {"id": "9", "status": "   ", "total": 5},            # MISSING_STATUS (whitespace)
]


def validate_rows(rows: list):
    for i, row in enumerate(rows, start=1):
        status = row["status"]
        total = row["total"]
        row_id = row["id"]
        # status is checked first, so a row missing both reports MISSING_STATUS.
        # `is None` must come first: None.strip() would raise AttributeError.
        if status is None or not status.strip():
            print(f"Row {i} (id={row_id}) is MISSING_STATUS")
        elif total is None:  # not `if not total`, because 0 is a valid total
            print(f"Row {i} (id={row_id}) is MISSING_TOTAL")
        else:
            print(f"Row {i} (id={row_id}) is VALID")


def main():
    validate_rows(rows)


if __name__ == "__main__":
    main()
