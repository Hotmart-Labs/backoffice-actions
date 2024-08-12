import sys
import yaml

def check_ping_in_yaml(file_path):
    try:
        with open(file_path, 'r') as file:
            data = yaml.safe_load(file)

        if 'monitoring' in data and 'ping' in data['monitoring']:
            print("The property 'monitoring.ping' is present in the file.")
        else:
            print("")
            print("Error: The property 'monitoring.ping' is NOT present in the file.")
            print("See https://techdeck.hotmart.co/catalog/default/component/heimdall/docs/findings/app_without_ping/")
            print("")

            sys.exit(1)

    except FileNotFoundError:
        print(f"Error: File not found at path {file_path}")

    except yaml.YAMLError as exc:
        print(f"Error parsing YAML file: {exc}")
        sys.exit(1)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python entrypoint.py <path_to_yaml_file>")
        sys.exit(1)

    file_path = sys.argv[1]
    check_ping_in_yaml(file_path)